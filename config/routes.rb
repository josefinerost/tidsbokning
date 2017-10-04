Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('', controller: :static_pages, action: :home)
  get(:contact, controller: :static_pages, action: :contact)
  get(:allabokningar, controller: :bookings, action: :index)
  get(:nybokning, controller: :bookings, action: :new)
  post(:skapabokning, controller: :bookings, action: :create)
  get('redigerabokning/:id', as: :redigerabokning, controller: :bookings, action: :edit)
  patch('uppdaterabokning/:id', as: :uppdaterabokning, controller: :bookings, action: :update)
end
