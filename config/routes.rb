Rails.application.routes.draw do
  resources :games do
    resources :players do
      resources :boards do
        resources :positions do
          resources :cards
        end
      end
    end
  end
end
