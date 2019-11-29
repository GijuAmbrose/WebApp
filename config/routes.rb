Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  root 'home#index'

  get 'home/upload'
  get 'home/employees'

  get 'home/import_file'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
