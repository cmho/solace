module Storytellers
    class GamesController < ApplicationController
        def index
            @games = Game.all.order(:order)
        end

        def new
            @game = Game.new
        end

        def create
            @game = Game.new(game_params)
            if @game.save!
                flash[:success] = "Your game was successfully added!"
                redirect_to storytellers_games_path
            else
                flash[:error] = "There was an error adding your game."
                redirect_to new_storytellers_game_path
            end
        end

        def edit
            @game = Game.find(params[:id])
        end

        def update
            @game = Game.find(params[:id])
            if @game.update_attributes!(game_params)
                flash[:success] = "Your game was successfully updated!"
                redirect_to storytellers_games_path
            else
                flash[:error] = "There was an error updating your game."
                redirect_to new_storytellers_game_path
            end
        end

        def downtime_actions
            @downtime_actions = DowntimeAction.where({game_id: params[:id]}).group_by(:character)
        end

        def show_game_downtime
            @downtime_action = DowntimeAction.find(params[:action_id])
        end

        def edit_game_downtime
            @downtime_action = DowntimeAction.find(params[:action_id])
            if @downtime_action.update_attributes!(downtime_action_params)
                flash[:success] = "Updated downtime response successfully!"
                redirect_to show_game_downtime_path(@downtime_action)
            else
                flash[:error] = "There was an error updating the downtime response."
                redirect_to show_game_downtime_path(@downtime_action)
            end
        end

        protected

        def game_params
            params.require(:game).permit(:name, :order)
        end
    end
end