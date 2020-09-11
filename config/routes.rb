Rails.application.routes.draw do
 
  namespace :api do
    get "/name_path" => "games#name_action"
    get "/guess_a_number_path/:number" => "games#guess_a_number_action"
    post "/guess_a_number_path/" => "games#guess_a_number_action"
  end
end
