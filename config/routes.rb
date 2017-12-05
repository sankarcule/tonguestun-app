Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Swaggard::Engine, at: '/api_docs/swagger/'

  namespace :api do
    namespace :v1 do

      get "appointments/list" => "appointments#list_appointments"
      post "add_doctor" => "appointments#add_doctor"
      post "add_patient" => "appointments#add_patient"
      post "add_appointment" => "appointments#add_appointment"

      scope :format => true, :constraints => { :format => 'json' } do
        post   "/register"       => "sessions#register"
        post   "/login"       => "sessions#create"
        delete "/logout"      => "sessions#destroy"
      end
    end
  end
end
