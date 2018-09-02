class CharactersController < ApplicationController
    before_action :authenticate_user!

    def index
        if is_storyteller?
            @characters = Character.where({is_npc: false}).order(:name)
        else
            @characters = Character.where({user: current_user.id})
        end
    end

    def npcs
        unless is_storyteller?
            redirect_to root_path
        end

        @characters = Character.where({is_npc: true})
    end

    def show
        @character = Character.find(params[:id])
    end

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(characters_params)
        if @character.save!
            flash[:success] = "Your character sheet was successfully created."
            redirect_to character_path(@character)
        else
            flash[:error] = "There was an error saving your character sheet."
            redirect_to new_character_path(characters_params)
        end
    end

    def edit
        @character = Character.find(params[:id])
    end

    def update
        @character = Character.find(params[:id])
        if @character.update_attributes!(characters_params)
            flash[:success] = "Your character sheet was successfully updated."
            redirect_to character_path(@character)
        else
            flash[:success] = "There was an error updating your character sheet."
            redirect_to edit_character_path(characters_params)
        end
    end

    def delete
        @character = Character.find(params[:id])
        @character.delete
        redirect_to root_path
    end

    protected

    def characters_params
        params.require(:character).permit(:id, :name, :user_id, :status, :is_npc, :is_secret)
    end

end