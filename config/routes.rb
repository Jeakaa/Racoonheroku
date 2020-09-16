Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'products/update_form', to:'products#update_form'

  resources :categories

  resources :products, constraints: { id: /\d+/ }

  resources :cpus
  resources :phonecallbacks

  get 'contacts', to:'contacts#index'
  get 'deliverys', to:'deliverys#index'

  root 'application#index'

  get '*unmatched_route', :to => 'application#render_404'

end
