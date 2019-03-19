Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles



  # a get route for our edit form. Since the form will need to know which record is being edited, this will need to be a dynamic route that accepts an :id as a parameter that the controller can access:

  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  # We still need to draw one additional route to handle the update action. This second route will also need to be dynamic, accepting the same :id as a parameter so that the action will know which record is being altered.

#   patch 'articles/:id', to: 'articles#update'


end
