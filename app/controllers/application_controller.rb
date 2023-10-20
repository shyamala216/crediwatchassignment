class ApplicationController < ActionController::Base
rescue_from CanCan::AccessDEnied do |exception|
  redirect_to root_url, alert: exception.message
end
end
