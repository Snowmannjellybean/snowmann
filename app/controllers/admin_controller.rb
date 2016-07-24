class AdminController < ApplicationController
    before_filter :authenticate, :except => [:login]
    def index
  end
end
