#!/usr/bin/env bats

load test_helper

@test "without args, show help for root pm-npm command" {
  run pm-npm-help

  assert_success

  assert_line "Usage: pm-npm <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${PM_NPM_TMP_BIN}/pm-npm-hello" <<SH
#!shebang
# Usage: pm-npm hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run pm-npm-help hello

  assert_success
  assert_output <<SH
Usage: pm-npm hello <world>

This command is useful for saying hello.
SH
}
