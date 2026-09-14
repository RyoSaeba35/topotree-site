Rails.application.routes.draw do
  get '/buy', to: redirect('https://gumroad.com/l/topotree')
  get '/download', to: redirect('https://github.com/RyoSaeba35/TopoTree_releases/releases/download/v0.1.0/Topotree_0.1.0_x64-setup.exe')

  # /en redirects
  get '/en',       to: redirect('/')
  get '/en/*path', to: redirect('/%{path}')

  # Default locale (en) at root
  root "pages#home"
  get "/privacy",          to: "pages#privacy",         as: :privacy
  get "/terms",            to: "pages#terms",            as: :terms
  get "/mentions-legales", to: "pages#mentions_legales", as: :mentions_legales
  get "/changelog",        to: "pages#changelog",        as: :changelog

  get '/sitemap.xml', to: 'pages#sitemap', defaults: { format: 'xml' }

  # Localized routes
  scope "/:locale", locale: /fr|de|es|it|pt|nl|pl|ja/ do
    root "pages#home", as: :localized_root
    get "/privacy",          to: "pages#privacy"
    get "/terms",            to: "pages#terms"
    get "/mentions-legales", to: "pages#mentions_legales"
    get "/changelog",        to: "pages#changelog"
  end
end
