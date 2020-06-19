require 'json'

def build_response(code, body)
  return {
    statusCode: code,
    body: body.to_json
  }
end