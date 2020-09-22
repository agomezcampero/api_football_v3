module ApiFootballV3
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
      400 => ApiFootballV3::Error::BadRequest,
      401 => ApiFootballV3::Error::Unauthorized,
      403 => ApiFootballV3::Error::Forbidden,
      404 => ApiFootballV3::Error::NotFound,
      406 => ApiFootballV3::Error::NotAcceptable,
      413 => ApiFootballV3::Error::RequestEntityTooLarge,
      422 => ApiFootballV3::Error::UnprocessableEntity,
      429 => ApiFootballV3::Error::TooManyRequests,
      500 => ApiFootballV3::Error::InternalServerError,
      502 => ApiFootballV3::Error::BadGateway,
      503 => ApiFootballV3::Error::ServiceUnavailable,
      504 => ApiFootballV3::Error::GatewayTimeout
    }.freeze
  end
end
