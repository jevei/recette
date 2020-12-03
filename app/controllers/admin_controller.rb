class AdminController < ApplicationController 
    layout "application"
    before_action :is_admin?
    private
    def is_admin?
        unless current_user.isAdmin==true #params[:is_admin]&&params[:is_admin]=="oui"
            #render html: "NOT AUTORIZED"
            redirect_to ''
        end
    end
end