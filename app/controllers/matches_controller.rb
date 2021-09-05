class MatchesController < ApplicationController

  def index
    render json: MatchesRepresenter.new(Match.all).as_json
  end

  def index_old
    render json: Match.all
  end

  def create
    match = Match.new match_params
    if match.save
      render json: match, status: :created
    else
      render json: match.errors, status: :unprocessable_entity
    end
  end


  def destroy
     success = Match.find(params[:id]).destroy!

     head :no_content

  rescue ActiveRecord::RecordNotDestroyed

     render json: {}, status: :unprocessable_entity
    
  end


  def match_params
    # NOTE: params is provided by ApplicationController
    params.require(:match).permit(:title)
  end

end
