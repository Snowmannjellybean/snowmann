class HomeController < ApplicationController
    partial_dir = Rails.root.join("app", "views", "home")
    def index
        render :index
    end
end
