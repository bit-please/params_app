class Api::ParamsExamplesController < ApplicationController

	def query_params_action
		input_value = params[:my_message]
		second_message = params[:second_message]
		@output_message = "The message is #{input_value} and the second message is #{second_message}"
		render 'query_params.json.jbuilder'
	end

	def query_params_name
		my_name = params[:name]
		@caps_name = my_name.upcase
		@message = "Your name is #{@caps_name}"
		if @caps_name.starts_with?("A")
			@message = "Hey, your name starts with A!"
		end
		render 'query_params_name.json.jbuilder'
	end

	def guess_query_action
		winning_number = 32
		user_guess = params[:guess].to_i
		if user_guess > winning_number
			@message = "Pick lower!"
		elsif user_guess < winning_number
			@message = "Pick higher!"	
		else
			@message = "You win!"	
		end
		render 'guess_query.json.jbuilder'
	end

	def segment_params_action
		@message = params[:wildcard]
		render 'segment_params.json.jbuilder'
	end

end
