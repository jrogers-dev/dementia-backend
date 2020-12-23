Rails.application.routes.draw do
  resources :games do
    resources :players do
      resources :cards
      resources :boards do
        resources :positions
      end
    end
  end
end
