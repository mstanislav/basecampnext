Basecamp Next Ruby Gem
=====================

Create config/initializers/basecampnext.rb:
----------------------------------------
```ruby
BASECAMPNEXT_CONFIG = YAML.load_file("#{Rails.root}/config/basecampnext.yml")[Rails.env]
```

Create config/basecampnext.yml:
----------------------------
```
development:
  username: xxxxx@yyyyy.zzz
  password: xxxxxxxxxxx
  account:  xxxxxxxxxxx
  api:      1

test:
  username: xxxxx@yyyyy.zzz
  password: xxxxxxxxxxx
  account:  xxxxxxxxxxx
  api:      1

production:
  username: xxxxx@yyyyy.zzz
  password: xxxxxxxxxxx
  account:  xxxxxxxxxxx
  api:      1
```
