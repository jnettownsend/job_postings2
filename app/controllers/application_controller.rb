class ApplicationController < ActionController::Base
    def redirect_if_guest
        !helpers.logged_in? ? redirect_to(root_path, notice: "Must log in first") : true
    end
end
