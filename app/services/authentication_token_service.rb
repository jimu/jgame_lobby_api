require 'jwt'

class AuthenticationTokenService

  HMAC_SECRET = 'my$secretKeyLOL'
  ALGORITHM_TYPE = 'HS256'
  def self.call
    
    hmac_secret = 'my$secretKeyLOL'
    payload = {"test" => "blah"}

    JWT.encode payload, HMAC_SECRET, ALGORITHM_TYPE 

  end
end
