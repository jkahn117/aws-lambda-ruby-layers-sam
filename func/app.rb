require 'httparty'
require 'json'
require 'shared'

def handler(event:, context:)
  begin
    response = HTTParty.get('http://checkip.amazonaws.com/')
  rescue HTTParty::Error => error
    puts error.inspect
    raise error
  end

  build_response(200, {
    message: "Hello World!",
    location: response.body
  })
end
