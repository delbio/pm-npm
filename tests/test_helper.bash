load lib/assertions

export PM_NPM_TEST_DIR="${BATS_TMPDIR}/pm-npm"
export PM_NPM_TMP_BIN="${PM_NPM_TEST_DIR}/bin"
export PM_NPM_CWD="${PM_NPM_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${PM_NPM_TMP_BIN}:$PATH"

mkdir -p "${PM_NPM_TMP_BIN}"
mkdir -p "${PM_NPM_TEST_DIR}"
mkdir -p "${PM_NPM_CWD}"

setup() {
  cd "${PM_NPM_CWD}"
}

teardown() {
  rm -rf "${PM_NPM_TEST_DIR}"
}
