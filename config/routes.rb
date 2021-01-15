Rails.application.routes.draw do
  get 'one', to: 'exercice#one'
  get 'two', to: 'exercice#two'
  get 'three', to: 'exercice#three'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
