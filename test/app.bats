 setup() {
  load 'test_helper/bats-support/load.bash'
  load 'test_helper/bats-assert/load.bash'

  PROJECT_ROOT="$(cd "${BATS_TEST_DIRNAME}/.." > /dev/null 2>&1 && pwd)"
  PATH="${PROJECT_ROOT}/src:${PATH}"
}

@test "prints args" {
  run app test
  assert_success
  assert_output "args: test"
}
