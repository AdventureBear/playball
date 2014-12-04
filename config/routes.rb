Rails.application.routes.draw do
 

#verb "url" => "name_of_controller#name_of_action"

  root "stadiums#index"
 # get "stadiums" =>  "stadiums#index"
 # get "stadiums/new" => "stadiums#new"
 # get "stadiums/:id" => "stadiums#show", as: "stadium"
 # get "stadiums/:id/edit"  => "stadiums#edit", as: "edit_stadium"
 # patch "stadiums/:id/" => "stadiums#update"
resources :stadiums do 
	resources:reviews
end


end
