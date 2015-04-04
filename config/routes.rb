Rails.application.routes.draw do
  resources :grills

  resources :questions
  
  resources :questions do  
  resources :grills
  end

end
