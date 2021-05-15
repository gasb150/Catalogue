Unsplash.configure do |config|
  config.application_access_key = ENV['UNSPLASH_API_KEY'],
  config.application_secret = ENV['UNSPLASH_API_SECRET'],
  config.application_redirect_uri = "https://your-application.com/oauth/callback"
  config.utm_source = "alices_terrific_client_app"
end