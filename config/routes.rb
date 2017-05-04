Rails.application.routes.draw do

  #Movies
  get("/", {:controller => "movies", :action => "index"})
  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/:id", {:controller => "movies", :action => "show"})

  #Directors
  get('/directors/new', { :controller => 'directors', :action => "new_form" })
  get('/directors/create_row', { :controller => 'directors', :action => "create_row" })

  get("/directors", {:controller => "directors", :action => "index"})
  get('/directors/:id', { :controller => 'directors', :action => "show" })

  get('/directors/:id/edit', { :controller => 'directors', :action => "edit_form" })
  get('/update_row/:id', { :controller => 'directors', :action => "update_row" })

  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })


end
