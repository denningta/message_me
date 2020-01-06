class HomeController < ApplicationController

    def index
        @messages = Message.all()
    end

    def landing_page
        
    end
end