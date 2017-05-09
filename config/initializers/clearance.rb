Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = "priorities@example.com"
   config.sign_in_guards = [ConfirmedUserGuard]
  config.rotate_csrf_on_sign_in = true
end
