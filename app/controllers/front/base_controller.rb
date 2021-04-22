class Front::BaseController < ApplicationController
  before_action :basic_auth

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'wanirou' && password == 'wanirou'
    end
  end
end
