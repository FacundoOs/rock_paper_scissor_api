class Api::V1::GameDataController < ApplicationController
  before_action :authenticate_user!

  def create
    data = GameData.new(game_data_params.merge(user: current_user))
    if data.save
      head :ok
    else
      render json: { error: data.errors.full_messages }
    end
  end

  def index
    collection = current_user.game_data
    render json: { entries: collection }
  end

  private

  def game_data_params
    params.require(:game_data).permit!
  end
end
