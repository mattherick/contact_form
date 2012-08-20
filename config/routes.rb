ContactForm::Engine.routes.draw do

	root :to => "forms#new"
  resources :forms, :only => [:new, :create]

end