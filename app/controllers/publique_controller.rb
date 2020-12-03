class PubliqueController < ApplicationController 
    def accueil
        #Liste toutes les recettes en ordre alphabetique (A à Z)
        @recettes=Recette.all.order(titre: :ASC)
        #render html: @recettes.to_s
        #render 'publique/accueil'
    end
end