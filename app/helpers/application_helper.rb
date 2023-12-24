module ApplicationHelper
    def session_link
        if logged_in? 
            link_to "LogOut", logout_path, method: :delete, data: { turbo_method: :delete } 
        else
            link_to "Login", login_path
        end 

    end
end
