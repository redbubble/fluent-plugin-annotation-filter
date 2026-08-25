# Updating

### 1. Bump local ruby version

- Find the latest version

```shell
asdf latest ruby
```

- Update the value in [Makefile](./Makefile)
- Update the value in [.tool-versions](./.tool-versions)

### 2. Update fluentd

- Use [the releases page](https://github.com/fluent/fluentd/releases) to find the latest value
- Update the value in [fluent-plugin-annotation-filter.gemspec](./fluent-plugin-annotation-filter.gemspec)

### 3. Bump the plugin version

- Bump the version in [Makefile](./Makefile)

### 4. Regenerate the lock file

```shell
make lock
```

### 5. Run the tests

```shell
make test
```

### 6. Build and publish the gem

- In the LastPass browser extension, find "RubyGems fluent-plugin-annotation-filter API key"
  - Copy the API key so it can be used to push the gem
- In the LastPass browser extension, find "rubygems.org"
  - Copy the TOPT so it can be used to push the gem
- Run the command to build and push
  - Be quick as the TOPT will expire

```shell
RUBY_GEMS_API_KEY=xxx RUBY_GEMS_OTP=xxx make push
```
