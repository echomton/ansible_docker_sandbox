

function print_type_wait() {
  echo -e "${*}"  | pv -qL $[50+(-2 + RANDOM%5)]
  wait
}

function print_wait() {
  echo -e "${*}"
  wait
}

function write_figlet()
{
  figlet "${*}"  | pv -qL $[200+(-2 + RANDOM%5)]
}
