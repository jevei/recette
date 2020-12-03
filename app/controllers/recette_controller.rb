class RecetteController < ApplicationController 
    before_action :authenticate_user!
    def show_id
        @recette=current_user.recettes.find(params[:id])
        respond_to do |format|
            format.html {render  'publique/recette'}
            format.json {render :json => @recette.ingredientInfo.each.to_json}
            format.xml {render :xml => @recette.ingredientInfo.each.as_json.to_xml}
        end
    end
    def user
        @recettes=current_user.recettes
        render 'prive/mesrecettes'
    end
end