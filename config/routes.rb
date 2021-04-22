Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :front do
    root to: 'top#index'
  end

  namespace :admin do
    root to: 'top#index'
  end
end
