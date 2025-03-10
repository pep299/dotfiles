# mise
eval "$(mise activate zsh)"


# jq
function jdf() {
  pbpaste | jq '. | fromjson'
}


# gdate
function ud() {
  gdate --date "@$(pbpaste)" -u
}


# fzf
## ghq
function g() {
  local src=$(ghq list | fzf --preview "ls -laTp $(ghq root)/{} | tail -n+4 | awk '{print \$9\"/\"\$6\"/\"\$7 \" \" \$10}'")
  if [ -n "$src" ]; then
    cd $(ghq root)/$src
  fi
}

## git-checkout-other-branch-with-fzf
function gcdf() {
  # ブランチの選択
  local selected_branch=$(git branch --sort=-committerdate | fzf --preview "git log -1 --pretty=%C(auto) %h %s --color=always {}" --preview-window down:40%:wrap --height 40% --reverse | sed "s/^[[:space:]]*//;s/[[:space:]]*$//")

  if [[ -z "$selected_branch" ]]; then
    echo "No branch selected."
    return 1
  fi

  # 差分の一覧を name-status + リネーム検出付きで取得
  local diff_data=$(
    git diff --name-status --find-renames "$selected_branch" \
    | fzf \
        --preview '
          # 行を分割して status / old_file / new_file を取り出す
          file_status=$(echo {} | awk "{print \$1}")
          old_file=$(echo {} | awk "{print \$2}")
          new_file=$(echo {} | awk "{print \$3}")
          git diff --color=always "'"$selected_branch"'" -- "$old_file"
        ' \
        --height 40% \
        --reverse
  )

  if [[ -z "$diff_data" ]]; then
    echo "No file selected."
    return 1
  fi

  # 1列目がステータス(R100, M, A, Dなど)
  # 2列目が旧ファイルまたはファイルパス
  # 3列目が新ファイル(リネームのみ存在する)
  local file_status=$(echo "$diff_data" | awk '{print $1}')
  local old_file=$(echo "$diff_data" | awk '{print $2}')
  local new_file=$(echo "$diff_data" | awk '{print $3}')

  if [[ "$file_status" =~ ^R ]]; then
    # RXXXX (リネーム)の場合
    echo "Renamed file: $old_file -> $new_file"
    # ブランチ上では old_file が元のパスなので、checkout は old_file を指定する
    git checkout "$selected_branch" -- "$old_file"

    # ワーキングツリー上で、もし新しい名前に合わせたいなら mv する
    # (必要なければ削除してOK)
    if [[ -n "$new_file" ]]; then
      mv "$new_file" "$old_file"
    fi
  else
    # R以外(M, A, Dなど)の場合はそのまま 2列目のパスをチェックアウト
    git checkout "$selected_branch" -- "$old_file"
  fi
}


# alias
## git
alias -g lb='$(git branch --sort=-committerdate | fzf --preview "git log -1 --pretty=%C(auto) %h %s --color=always {}" --preview-window down:40%:wrap --height 40% --reverse | sed "s/^\*\s*//")'
alias -g lr='$(git branch -r --sort=-committerdate | fzf --preview "git log -1 --pretty=%C(auto) %h %s --color=always {}" --preview-window down:40%:wrap --height 40% --reverse | sed "s/remotes\/[^\/]*\///" | sed "s/origin\///")'

## register github ssh key
alias rgsk='pbpaste | ssh-add -'
