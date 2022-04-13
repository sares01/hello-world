#!/bin/bash

set -x

echo "========= ECRETS: $APP_S========="

base64 -d $APP_S > app_secrets
cat app_secrets

 #gauge run -s -v --simple-console --fail-safe --tags "$IGNORE_TAGS" --env "$ENV_UMGEBUNG" specs/