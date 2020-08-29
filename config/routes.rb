Rails.application.routes.draw do
 
  root 'students#index'
  resources :students
  resources :enrollments, only: [:new, :create, :destroy]
  
end
