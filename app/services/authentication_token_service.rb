require 'jwt'

class AuthenticationTokenService
  def self.call
    
    hmac_secret = 'my$secretKeyLOL'
    payload = {"test" => "blah"}

    JWT.encode payload, hmac_secret, 'HS256'

  end
end
