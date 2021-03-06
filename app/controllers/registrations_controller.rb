class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    # サインアップ後のリダイレクト先をrootに変更
    root_path
  end

  def after_update_path_for(resource)
    user_path(current_user)
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  end