class Api::ParamsExamplesController < ApplicationController

	def query_params_action
		input_value = params[:my_message]
		second_message = params[:second_message]
		@output_message = "The message is #{input_value} and the second message is #{second_message}"
		render 'query_params.json.jbuilder'
	end

end
