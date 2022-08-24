#!/usr/bin/bash

# vmuuid <alias>
# https://github.com/bushchannelstepper/alias2uuid/

# Returns a Zone's UUID when given its alias
# Args:  alias name
# Return:  UUID string
# or exit 1 on failure

PAIRS=$(vmadm list | awk '{print $5, $1}')

(echo "$PAIRS" | cut -d ' ' -f 1 | grep -E ^$1$ ) > /dev/null || exit 1

ALIAS="$1"
UUID=$(echo "$PAIRS" | grep -E $ALIAS | cut -d ' ' -f 2)

echo $UUID
exit 0
