class AdminController < ApplicationController
    before_filter :authenticate, :except => [:login]
    def index
          @logs = `tail -n 100 log/minetest.log`
    end
end
