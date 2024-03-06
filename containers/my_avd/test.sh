#/bin/bash
set -e

# test if cLab version is correct
if [ -z "$(containerlab version | grep \"version: ${CLAB_VERSION}\")" ]; then exit 1; fi
