#!/usr/bin/env bash

# Web Page of BASH best practices https://kvz.io/blog/2013/11/21/bash-best-practices/
#Exit when a command fails.
set -o errexit
#Exit when script tries to use undeclared variables.
set -o nounset
#The exit status of the last command that threw a non-zero exit code is returned.
set -o pipefail

#Trace what gets executed. Useful for debugging.
#set -o xtrace

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename "${__file}" .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)"

echo "Script name: ${__base}"
echo "Executing at ${__root}"

if ! type "mvn" &> /dev/null; then
    echo "Maven is not installed. Install it and then re launch"
    exit 1
fi

# shellcheck disable=SC1083
MVN_VERSION="$(mvn -q -Dexec.executable=echo -Dexec.args=\${project.version} --non-recursive exec:exec)"

MVN_DATE="$(date -u '+%y%m%d%H%M%S')"

if [ -z "${MAVEN_CLI_OPTS+x}" ]; then
    MAVEN_CLI_OPTS=""
fi

mvn versions:set -DnewVersion="${MVN_VERSION}-SNAPSHOT-${MVN_DATE}" -DallowSnapshots
