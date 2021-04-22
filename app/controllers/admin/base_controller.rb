class Admin::BaseController < ApplicationController
  before_action :basic_auth

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'komei' && password == 'hashimoto'
    end
  end
end
