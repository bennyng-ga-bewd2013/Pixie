class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # layout :layout_by_resource
  before_action :set_locale

	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options={}) #**applying current locale you already picked (e.g. zh-TW, so all links will be with that locale)
  #logger.debug #"default_url_options is passed options: #{options.inspect}\n"
  		{ locale: I18n.locale }
  end

 

  # protected

  # def layout_by_resource
  #   if devise_controller?
  #     "deviselayout"
  #   else
  #     "application"
  #   end
  # end

end
