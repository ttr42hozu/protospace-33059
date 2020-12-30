class ApplicationController < ActionController::Base
  # deviseのコントローラーが呼び出された場合、configure_permitted_parametersメソッドを呼ぶ記述、
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  # この4つの値も保存できるようにするため
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
