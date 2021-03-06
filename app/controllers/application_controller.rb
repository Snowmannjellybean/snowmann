class ApplicationController < ActionController::Base
    before_action :set_locale
    # thanks to https://www.sitepoint.com/go-global-rails-i18n/
    def set_locale
        if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
            l = cookies[:educator_locale].to_sym
        else
            begin
                country_code = request.location.country_code
                if country_code
                    country_code = country_code.downcase.to_sym
                    [:de, :en].include?(country_code) ? l = :de : l = :en
                else
                    l = I18n.default_locale # use default locale if cannot retrieve this info
                end
            rescue
                l = I18n.default_locale
            ensure
                cookies.permanent[:educator_locale] = l
            end
        end
        I18n.locale = l
    end
    protect_from_forgery with: :exception
  #def default_url_options(options={})
        #logger.debug "default_url_options is passed options: #{options.inspect}\n"
  #        { :locale => I18n.locale }
  #end
end
