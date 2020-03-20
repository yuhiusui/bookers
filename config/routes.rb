Rails.application.routes.draw do
	root 'books#top'
	get 'books' =>'books#index'
	post 'books' => 'books#create'
	get 'books/:id' => 'books#show', as: 'book'
	get 'books/:id/edit' => 'books#edit', as: 'edit_book'
	patch 'books/:id' => 'books#update', as: 'update_book'
	put 'books/:id' => 'books#update'
	delete '/books/:id' => 'books#destroy'
end
