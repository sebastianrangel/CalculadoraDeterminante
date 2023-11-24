Rails.application.routes.draw do
  root 'calculator#index'
  post 'calculator/calculate', to: 'calculator#calculate'
  get 'calculator/index', to: 'calculator#index', as: 'calculator_index'
end
