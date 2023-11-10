#!/bin/bash

execute_command() {
  local command="$1"
  shift

  echo "Executing command: $command with options: $@"

  $command "$@"
}

echo "Enter the command to execute:"
read user_command

echo "Enter additional options (if any):"
read user_options

execute_command "$user_command" $user_options
