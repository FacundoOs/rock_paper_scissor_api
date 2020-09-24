# frozen_string_literal: true

DeviseTokenAuth.setup do |config|
  config.change_headers_on_each_request = false
  config.token_lifespan = 3.weeks
  config.batch_request_buffer_throttle = 5.seconds
end
