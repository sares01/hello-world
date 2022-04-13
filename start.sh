#!/bin/bash

set -x

echo "========= ECRETS: $APP_S========="

echo "APP_S" > secret

base64 -d secret > app_secrets
cat app_secrets
#gauge run -s -v --simple-console --fail-safe --tags "$IGNORE_TAGS" --env "$ENV_UMGEBUNG" specs/
