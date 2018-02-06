# You need to end the command to track with `&` so it goes to the background.
# Running these with no arguments will track the latest running process until it ends. Alternatively, give a PID.

# Progress indicator. Outputs an extra `.` every 0.75 seconds.
function progress_indicator {
  local pid

  if [[ -n "${1}" ]]; then
    pid="${1}"
  else
    [[ -n "${!}" ]] && pid="${!}" || return
  fi

  while ps "${pid}" > /dev/null; do
    echo -n '.'
    sleep '0.75'
  done
}

# Spinner.
function spinner {
  local pid spin_chars

  if [[ -n "${1}" ]]; then
    pid="${1}"
  else
    [[ -n "${!}" ]] && pid="${!}" || return
  fi
  
  spin_chars='|/-\'
  while ps "${pid}" > /dev/null; do
    printf '%c' "${spin_chars}"
    spin_chars="${spin_chars#?}${spin_chars%???}"
    sleep '0.05'
    printf '\b'
  done
}
