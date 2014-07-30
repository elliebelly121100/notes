Rails.application.routes.draw do
  get '/ideas' => 'idea#index'
  get '/idea' => 'application#ideabook'
  get '/new_idea' => 'idea#new'
  get '/create_idea' => 'idea#create'
  get '/idea/:id' => 'idea#show'
  get '/idea/:id/edit' => 'idea#edit'
  get '/update_idea/:id' => 'idea#update'
  get '/idea/:id/destroy' => 'idea#destroy'
end
