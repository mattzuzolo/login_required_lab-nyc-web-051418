class SessionsController < ApplicationController

  before_action :require_login

  def new
  end

  def create
    current_user.blank? ? (redirect_to '/sessions/new') : (redirect_to '/secrets/show')
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  private

  def require_login
    redirect_to '/sessions/new' if current_user.blank?
  end


end
