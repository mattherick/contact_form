Rails.application.routes.draw do

  mount ContactForm::Engine => "/contact_form"

  root to: "welcome#show"
end