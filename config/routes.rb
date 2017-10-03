Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('', controller: :static_pages, action: :home)
  get(:contact, controller: :static_pages, action: :contact)
end
