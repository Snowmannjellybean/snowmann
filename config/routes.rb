Rails.application.routes.draw do
  get 'admin/index'

    get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

controller :home do
    get 'home' => 'home#index', :as => 'home'
    get 'rules' => 'home#rules', :as => 'rules'
    get 'faq' => 'home#faq', :as => 'faq'
    get 'mapshots' => 'home#mapshots', :as => 'mapshots'
    get 'stats' => 'home#stats', :as => 'stats'
    get 'donate' => 'home#donate', :as => 'donate'
    get 'contact' => 'home#contact', :as => 'contact'
    get 'hosting' => 'home#hosting', :as => 'hosting'
    get 'mods' => 'home#mods', :as => 'mods'
    root :to => 'home#index'
end

controller :screenshots do
    get 'screenshots' => 'screenshots#index', :as => 'screenshots'
    get 'screenshots/tower_of_madness' => 'screenshots#tower_of_madness'
    get 'screenshots/townhall' => 'screenshots#townhall'
    get 'screenshots/home_on_water' => 'screenshots#home_on_water'
    get 'screenshots/londors_residence' => 'screenshots#londors_residence'
    get 'screenshots/country_house' => 'screenshots#country_house'
    get 'screenshots/skyscraper' => 'screenshots#skyscraper'
    get 'screenshots/bennys_residence' => 'screenshots#bennys_residence'
    root :to => 'screenshots#index'
end

controller :admin do
    get 'admin' => 'admin#index', :as => 'admin'
    get 'login' => 'admin#login', :as => 'login'
end
end

