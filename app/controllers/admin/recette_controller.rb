class Admin::RecetteController < AdminController 
    def show_list
        #Liste toutes les recettes en ordre alphabetique (A à Z)
        @recettes=Recette.all
        @users=User.all
        #render html: @recettes.to_s
        render 'admin/recettes'
    end
    def show_id
        @recette=Recette.find(params[:id])
        respond_to do |format|
            format.html {render  'admin/recetteid'}
            format.json {render :json => @recette.to_json}
            format.xml {render :xml => @recette.as_json.to_xml}
        end
    end
end