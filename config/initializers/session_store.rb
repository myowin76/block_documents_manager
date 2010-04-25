# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ror_test2_session',
  :secret      => 'b8195203d8e5f134086e04835da807d958df9379c7cf0df34f8d07eca09f4cb4c3bb3ce11297956aa7cb92448a9b4e02afdbf4ce13ad536349759062c71ad1f0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
