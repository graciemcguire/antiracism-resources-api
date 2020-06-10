class ApplicationController < ActionController::API
  
  def secret(payload)
    JWT.encode(payload, 'secretSecret')
  end

end
