Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show, :new, :create ] do
     resources :doses, only: [:new, :create, :edit, :update, :destroy ]
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#A user can see the list of all cocktails
#A user can see the details of a given cocktail, with the ingredient list
#A user can create a new cocktail.
#A user can add a new dose (ingredient/description pair) on an existing cocktail.
#A user can delete a dose on an existing cocktail
