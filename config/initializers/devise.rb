require 'devise'

Devise.setup do |config|

  config.secret_key = 'dd537b3b584095d9c8d99d22a6bde5ddfc8aff0ea838dba12aae72a48a78c83a0f1911d9d1b8f8d58d9ee68ec3188293f5ccce0505260412c489fe4e3c283f11'

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  # config.responder.error_status = :unprocessable_entity
  # config.responder.redirect_status = :see_other
end
