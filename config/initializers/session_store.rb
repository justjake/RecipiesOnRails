# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RecipiesOnRails_session',
  :secret      => '263246339592392a2d1143c55274014661b1ac1e79dfd026c91f04eb7c2c6b85591e84d16f8c08fa0c3c858e1d212ea346c8db785e2e3271de670305744e8e21'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
