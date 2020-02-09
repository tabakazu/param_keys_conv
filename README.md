# param_keys_conv
param_keys_conv is keys converter of strong parameters.

## Usage
```ruby
# Convert camelCase to under_score.
params                 # => <ActionController::Parameters {"user"=>{"nickName"=>"Alice", "userRole"=>"admin"}} permitted: false>
params.underscore_keys # => <ActionController::Parameters {"user"=>{"nick_name"=>"Alice", "user_role"=>"admin"}} permitted: false>

# Convert under_score to camelCase.
params                       # => <ActionController::Parameters {"user"=>{"nick_name"=>"Alice", "user_role"=>"admin"}} permitted: false>
params.camelize_keys(:lower) # => <ActionController::Parameters {"user"=>{"nickName"=>"Alice", "userRole"=>"admin"}} permitted: false>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'param_keys_conv'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install param_keys_conv
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
