AjaxTodoDemo::Application.routes.draw do
  #root to: => "todos#create"

  resources :todos

  
end
