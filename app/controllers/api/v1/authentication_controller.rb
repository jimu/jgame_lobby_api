module Api
  module V1
    class AuthenticationController < ApplicationController

      rescue_from ActionController::ParameterMissing, with: :parameter_missing

      def create
        user = User.find_by(name: params.require(:username))

        params.require(:password)
        render json: { token: '123'}, status: :created
      end

      def parameter_missing(e)
        render json: { error: e.message }, status: :unprocessable_entity
      end
      
    end
  end
end
