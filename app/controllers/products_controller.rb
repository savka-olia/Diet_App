require "json"
require "rest-client"

class ProductsController < ApplicationController

	private

	def get_api(query)
		res = RestClient.get("https://api.calorieninjas.com/v1/nutrition?query=#{query}", headers={'X-Api-Key': ENV["CALORIE_API_KEY"]})
		JSON.parse(res)
	end
end
  