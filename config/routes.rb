Rails.application.routes.draw do
 

  resources :students
  resources :enrollments, only: [:new, :create, :destroy]
end
