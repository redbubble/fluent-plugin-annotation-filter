#!/usr/bin/env bash

required_env_vars=(VERSION RUBY_GEMS_API_KEY RUBY_GEMS_OTP)

for required_env_var in "${required_env_vars[@]}"; do
  if [[ ! -v "${required_env_var}" ]]; then
    echo "ERROR: ${required_env_var} is not set"
    exit 1
  fi
done

mkdir -p ~/.gem/

echo -e "--- \n:rubygems_api_key: ${RUBY_GEMS_API_KEY}" > ~/.gem/credentials
chmod 600 ~/.gem/credentials
cat ~/.gem/credentials

gem push \
  --otp "${RUBY_GEMS_OTP}" \
  "fluent-plugin-annotation-filter-${VERSION}.gem"
