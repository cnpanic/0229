Rails.application.routes.draw do
  devise_for :models
  root to: "main#index"
  get 'index' => "main#index"
  get '404' => "main#404"
  get 'contact' => "main#contact"
  get '/index2' => "main#index2"
  get 'board' => "main#board"
  post 'write' => "main#write"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
