# Function to recursively remove .localized files
function rmlocalized
  if test (count $argv) -gt 0
    set --function target_dir $argv[1]
  else
    set --function target_dir .
  end
  set --function abs_target_dir (realpath $target_dir)

  # If target_dir is the home directory, do not search recursively
  if test "$abs_target_dir" = "$HOME"
    find "$abs_target_dir" -maxdepth 1 -type f -name .localized -delete
  else
    find "$abs_target_dir" -type f -name .localized -delete
  end
end
