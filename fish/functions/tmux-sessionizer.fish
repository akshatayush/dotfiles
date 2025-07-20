function tmux-sessionizer
  set --function name (basename (pwd) | sed -e "s/\.//g")
  if tmux ls 2>/dev/null | grep -q "$name"
    tmux attach -t "$name"
  else
    tmux new-session -s "$name"
  end
end
