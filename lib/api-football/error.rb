module ApiFootball
  class Error < StandardError
    attr_reader :code

    ClientError = Class.new(self)
    BadRequest = Class.new(ClientError)
    Unauthorized = Class.new(ClientError)
    Forbidden = Class.new(ClientError)
    NotFound = Class.new(ClientError)
    NotAcceptable = Class.new(ClientError)
    RequestEntityTooLarge = Class.new(ClientError)
    UnprocessableEntity = Class.new(ClientError)
    TooManyRequests = Class.new(ClientError)

    ServerError = Class.new(self)
    InternalServerError = Class.new(ServerError)
    BadGateway = Class.new(ServerError)
    ServiceUnavailable = Class.new(ServerError)
    GatewayTimeout = Class.new(ServerError)

    ERRORS = {
      400 => ApiFootball::Error::BadRequest,
      401 => ApiFootball::Error::Unauthorized,
      403 => ApiFootball::Error::Forbidden,
      404 => ApiFootball::Error::NotFound,
      406 => ApiFootball::Error::NotAcceptable,
      413 => ApiFootball::Error::RequestEntityTooLarge,
      422 => ApiFootball::Error::UnprocessableEntity,
      429 => ApiFootball::Error::TooManyRequests,
      500 => ApiFootball::Error::InternalServerError,
      502 => ApiFootball::Error::BadGateway,
      503 => ApiFootball::Error::ServiceUnavailable,
      504 => ApiFootball::Error::GatewayTimeout
    }.freeze
  end
end
