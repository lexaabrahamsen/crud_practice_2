Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
  # endindex
  get "/photos" => "photos#index"
  post "/photos" => "photos#create"
  get "/photos/:id" => "photos#show"
end
end
