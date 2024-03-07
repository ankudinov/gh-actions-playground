#/bin/bash
set -e

source test-utils.sh vscode

# Run common tests
checkCommon

check "python" python --version

# test if cLab version is correct
echo ">>> Testing cLab version... Must be ${CLAB_VERSION}"
TEST_OUT=$(containerlab version | grep "version: ${CLAB_VERSION}")
if [ -z "${TEST_OUT}" ]; then
    echo "      cLab version is incorrect."
    exit 1
else
    echo "      cLab version is correct."
fi
