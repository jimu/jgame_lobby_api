class AddressesController < ApplicationController
  def index
    render json: AddressesRepresenter.new(Address.all).as_json
  end

  def show
    id = params['id']
    render json: AddressRepresenter.new(Address.find(id)).as_json
  end
end
