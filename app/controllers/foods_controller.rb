class FoodsController < ApplicationController
  def show
    food_item = params[:food]
    foods_data = HTTP.get("https://api.edamam.com/api/food-database/v2/parser?app_id=#{Rails.application.credentials.foods_app_key}&app_key=%#{Rails.application.credentials.foods_api_key}&ingr=#{food_item}&nutrition-type=cooking").parse(:json)
    render json: foods_data
  end
end
