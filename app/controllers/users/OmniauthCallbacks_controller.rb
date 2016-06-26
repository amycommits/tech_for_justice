class OmniauthCallbacksController < Application::Base
  def google_oauth2
    user = ::User.from_omniauth(oauth_response)

    if user.persisted?
      flash[:notice] = I18n.t("devise.omniauth_callbacks.success", kind:provider)

      sign_in_and_redirect user, event: :authentication
    else
      session["devise.google_data"] = oauth_response.except(:extra)
      params[:error] = :account_not_found
      do_failure_things
	end
  end
end
