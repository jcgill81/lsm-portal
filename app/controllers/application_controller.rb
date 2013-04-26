class ApplicationController < ActionController::Base
  protect_from_forgery
end

class AdminController < ApplicationController
  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == 'admin' && password == '201Spear'
    end
  end
end
