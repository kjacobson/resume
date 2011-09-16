class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def get_user_and_cv user_id, cv_id
    @user = User.find(user_id)
    @cv = @user.cvs.find(cv_id)
  end

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def require_known_user
      unless current_user
         redirect_to :homepage, :notice => 'You must be an admin to access the requested resource.'
         return false
      end
  end
end
