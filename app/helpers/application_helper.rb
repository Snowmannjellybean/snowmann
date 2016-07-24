module ApplicationHelper
    def is_active(action)       
        params[:action] == action ? "active" : nil        
    end
    def logged_in?
        not request.authorization.nil?
    end
end
