#/bin/bash
set -e

# test if cLab version is correct
echo ">>> Testing cLab version... Must be ${CLAB_VERSION}"
TEST_OUT=$(containerlab version | grep "version: ${CLAB_VERSION}")
if [ -z "${TEST_OUT}" ]; then
    echo "      cLab version is incorrect."
    exit 1
else
    echo "      cLab version is correct."
fi
