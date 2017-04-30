Rails.application.routes.draw do

  #Movies
  get("/", {:controller => "movies", :action => "index"})
  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/:id", {:controller => "movies", :action => "show"})

  #Directors
  get("/directors", {:controller => "directors", :action => "index"})
  get('/directors/:id', { :controller => 'directors', :action => "show" })
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })
  

end
