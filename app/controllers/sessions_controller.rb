class SessionsController < ApplicationController
  byebug
  def index
    session[:session_hello] ||= "Welcome"
    cookies[:cookies_hello] ||= "Welcome"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
