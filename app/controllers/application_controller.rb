class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed = params[:locale]
    return parsed if parsed.present? && I18n.available_locales.map(&:to_s).include?(parsed)
    nil
  end

  # Current path without the locale prefix, e.g. "/fr/privacy" -> "/privacy"
  def path_without_locale
    request.path.sub(%r{\A/(#{I18n.available_locales.join('|')})(?=/|\z)}, "").presence || "/"
  end
  helper_method :path_without_locale

  # Same page in another language
  def localized_path(locale)
    base = path_without_locale
    return base if locale.to_sym == I18n.default_locale
    base == "/" ? "/#{locale}" : "/#{locale}#{base}"
  end
  helper_method :localized_path

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end
end
