Rails.application.routes.draw do
  devise_for :users

 root 'home#index'

  get 'post/new'

  get 'post/create'

  get 'post/read/:id' => 'post#read', as: 'post_read'

  get 'post/destroy/:id'=>'post#destroy'

  get 'post/edit/:id'=>'post#edit'

  get 'post/update/:id'=>'post#update'

  get 'post/read/:post_id/comment_create'=>'post#comment_create'

  get 'post/read/:id/comment_destroy'=>'post#comment_destroy'

  get 'post/read/:id/comment_edit' =>'post#comment_edit'

  get 'post/comment_update/:id'=> 'post#comment_update'

  get 'post/warnu'

  get 'post/warnd'

  resources :post
  # get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
