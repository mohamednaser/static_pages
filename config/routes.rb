Rails.application.routes.draw do

  get 'help' , to: 'static_pages#help'
  
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/login'
  # get 'welcome/index'

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
