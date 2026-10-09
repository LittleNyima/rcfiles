source_zsh() {
  if (( $# != 1 )); then
    print -u2 -r -- "Usage: source_zsh <file_path>"
    return 1
  fi

  # Use an absolute path to prevent source from searching PATH.
  local source_file="${1:a}"

  if [[ ! -f "$source_file" ]]; then
    print -u2 -r -- "Error: File does not exist or is not a regular file: $source_file"
    return 1
  fi

  if [[ ! -r "$source_file" ]]; then
    print -u2 -r -- "Error: File is not readable: $source_file"
    return 1
  fi

  # Check syntax without executing the file.
  if ! command zsh -n -- "$source_file"; then
    print -u2 -r -- "Error: Syntax check failed. File was not sourced: $source_file"
    return 1
  fi

  source "$source_file"
}

require_commands() {
  local dependency
  local missing=0

  for dependency in "$@"; do
    if [[ "$dependency" == */* ]]; then
      if [[ ! -f "$dependency" || ! -x "$dependency" ]]; then
        print -u2 -r -- "Error: Required file is missing or not executable: $dependency"
        missing=1
      fi
    elif [[ -z "$dependency" ]]; then
      print -u2 -r -- "Error: Dependency name must not be empty."
      missing=1
    elif (( ! ${+commands[$dependency]} )); then
      print -u2 -r -- "Error: Required executable not found in PATH: $dependency"
      missing=1
    fi
  done

  return "$missing"
}
