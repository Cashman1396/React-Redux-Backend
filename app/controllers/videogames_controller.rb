class VideogamesController < ApplicationController
    before_action :set_videogame, only: [:show, :update, :destroy]

    def index
        if logged_in?
            @videogames = current_user.videogames
            render json: VideogameSerializer.new(@videogames)
        else
            render json: {
                error: "Please Try Again"
            }
        end 
    end 

    def show
        render json: @videogame
    end 

    def create 
        @videogame = current_user.videogames.build(videogame_params)
        if @videogame.save
            render json: VideogameSerializer.new(@videogame), status: :created
        else 
            error_resp = {
                error: @videogame.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end 
    end
    
    def update
        if @videogame.update(videogame_params)
            render json: VideogameSerializer.new(@videogame), status: :ok
        else 
            render json: {
                error: "Please enter a Game"
            }
        end 
    end 

    def destroy
        if @videogame.destroy
            render json: {message: "Video Game Erased"}, status: :ok
        else
            render json: {error: "Something Went Wrong"}
        end 
    end 

    private

    def set_videogame
        @videogame = Videogame.find(params[:id])
    end 

    def videogame_params
        params.require(:videogame).permit(:game_name, :game_genre, :game_rating, :game_platform, :description, :image_url, :year_released, :user_id)
    end 
end
