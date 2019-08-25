Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.


  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single test. If you are using a tool that
  # preloads Rails for running tests, you may have to set it to true.
  config.eager_load = true
  config.active_storage.service = :local
end

