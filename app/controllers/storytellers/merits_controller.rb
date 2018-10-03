module Storytellers
    class MeritsController < ActionController
        def index
            @merits = Merit.all
        end

        def show
            @merit = Merit.find(params[:id])
        end

        def new
            @merit = Merit.new
        end

        def create
            @merit = Merit.new(merit_params)
            if @merit.save!
                flash[:success] = "Your new merit was saved."
                redirect_to storytellers_merits_path
            else
                flash[:error] = "There was a problem saving your new merit."
                redirect_to new_storytellers_merit_path
            end
        end

        def edit
            @merit = Merit.find(params[:id])
        end

        def update
            @merit = Merit.find(params[:id])
            if @merit.update_attributes!(merit_params)
                flash[:success] = "Your merit was successfully updated."
                redirect_to storytellers_merits_path
            else
                flash[:error] = "There was a problem updating your merit."
                redirect_to edit_storytellers_merit_path(@merit)
            end
        end

        protected

        def merit_params
            params.require(:merit).permit(:name, :id, :allowed_ratings, :description, :prerequisites, :requires_description, :requires_specification)
        end
    end
end