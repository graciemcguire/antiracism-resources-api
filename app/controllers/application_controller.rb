class ApplicationController < ActionController::API

  def secret(payload)
    # byebug
    JWT.encode(payload, 'secretSecret')
  end

end
