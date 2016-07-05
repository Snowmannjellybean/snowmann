Rails.application.routes.draw do
    get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
        get 'home' => 'home#index', :as => 'home'
        get 'rules' => 'home#rules', :as => 'rules'
        get 'faq' => 'home#faq', :as => 'faq'
        get 'mapshots' => 'home#mapshots', :as => 'mapshots'
        get 'stats' => 'home#stats', :as => 'stats'
        get 'donate' => 'home#donate', :as => 'donate'
        get 'contact' => 'home#contact', :as => 'contact'
        get 'mods' => 'home#mods', :as => 'mods'
    root :to => 'home#index'
        get '/:screenshots', to: 'screenshots#index'
        get '/:screenshots/tower_of_madness', to: 'screenshots#tower_of_madness'
        get '/:screenshots/townhall', to: 'screenshots#townhall'
        get '/:screenshots/home_on_water', to: 'screenshots#home_on_water'
        get '/:screenshots/londors_residence', to: 'screenshots#londors_residence'
        get '/:screenshots/country_house', to: 'screenshots#country_house'
        get '/:screenshots/skyscraper', to: 'screenshots#skyscraper'
        get '/:screenshots/bennys_residence', to: 'screenshots#bennys_residence'
end



