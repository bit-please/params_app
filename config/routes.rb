Rails.application.routes.draw do

  namespace :api do
    get "/query_params_url" => "params_examples#query_params_action"

    get "/query_params_name" => "params_examples#query_params_name"

    get "/guess_query_url" => "params_examples#guess_query_action"

    get "/segment_params_url/:wildcard" => "params_examples#segment_params_action"
  end

end
