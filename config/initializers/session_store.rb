# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blog_session',
  :secret      => 'f79e73ba3d4807760dfcda0f68ecdae7c608191dcc29b25e5ac020b0ad140b4dc4f1110f92ce301a484d77222d8d15b8fb144e7cfc5e6d8f9029aad7b6760b19'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
