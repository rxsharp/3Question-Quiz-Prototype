Rails.application.routes.draw do
  resources :results

  resources :grills

  resources :questions

resources :questions do
  resources :grills do
    resources :results
  end
end

end
