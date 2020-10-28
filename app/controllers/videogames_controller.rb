class VideogamesController < ApplicationController
    before_action :set_videogame, only: [:show, :update, :destroy]
end
