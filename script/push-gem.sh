#!/usr/bin/env bash

mkdir -p ~/.gem/

echo -e "--- \n:rubygems_api_key: ${RUBY_GEMS_API_KEY}" > ~/.gem/credentials
chmod 600 ~/.gem/credentials
cat ~/.gem/credentials

gem push \
  --otp "${RUBY_GEMS_OTP}" \
  "fluent-plugin-annotation-filter-${VERSION}.gem"
