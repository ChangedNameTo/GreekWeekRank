# Sets up mailgun, pulls keys from Figaro

Mailgun.configure do |config|
  config.api_key = ENV["mailgun_api_key"]

end
