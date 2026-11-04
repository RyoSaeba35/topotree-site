Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.log_level = :info
  config.log_tags = [:request_id]
  config.hosts << "topotree.app"
  config.hosts << "www.topotree.app"
  # Let kamal-proxy's healthcheck through (it calls /up with the container IP as host)
  config.host_authorization = { exclude: ->(request) { request.path == "/up" } }
end
