class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :guest_name, :guest_avatar

  def guest_name
    cookies.signed[:username] ||= "GUEST#%06d" % rand(0..999999)
  end

  def guest_avatar
    cookies.signed[:avatar] ||= Conversation.random_avatar
  end

  def guest_token
    cookies.signed[:avatar] ||= SecureRandom.urlsafe_base64
  end
end
