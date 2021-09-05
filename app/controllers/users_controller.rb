class UsersController < ApplicationController
  def index
    render json: UsersRepresenter.new(User.all).as_json
  end
end
