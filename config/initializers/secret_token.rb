# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
FlashcardApi::Application.config.secret_token = '1c7e7d1f05f71cda6fc9cb7d4d7ffaa2a0bc8ac1854438abba2ee28d7bde7d2dcd4b64510f31b3e16c9a33227ac52962acabe0a387ecd5c0d31ec0ebe03263ef'
