module Api
  module V1
    class DrinksController < ApplicationController
      def index
        render json: Drink.all
      end
    end
  end
end
