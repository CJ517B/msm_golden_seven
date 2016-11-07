Rails.application.routes.draw do

  get("/", {:controller=> "movies", :action => "index"})

  get("/movie", {:controller=> "movies", :action => "index"})
  get("/movie/new", {:controller=> "movies", :action => "new"})
  get("/movie/:id", {:controller=> "movies", :action => "detail"})
  get("/movie/:id/edit", {:controller=> "movies", :action => "edit"})
  get("/update_movie/:id", {:controller=> "movies", :action => "update"})
  get("/create_movie", {:controller=> "movies", :action => "create_movie"})
  get("/movie/:id/destroy", {:controller=> "movies", :action => "destroy"})

  get("/director", {:controller=> "directors", :action => "index"})
  get("/director/new", {:controller=> "directors", :action => "new"})
  get("/director/:id", {:controller=> "directors", :action => "detail"})
  get("/director/:id/edit", {:controller=> "directors", :action => "edit"})
  get("/update_director/:id", {:controller=> "directors", :action => "update"})
  get("/create_director", {:controller => "directors", :action=>"create_director"})
  get("/director/:id/destroy", {:controller=> "directors", :action => "destroy"})

  get("/actor", {:controller=> "actors", :action => "index"})
  get("/actor/new", {:controller=> "actors", :action => "new"})
  get("/actor/:id", {:controller=> "actors", :action => "detail"})
  get("/actor/:id/edit", {:controller=> "actors", :action => "edit"})
  get("/update_actor/:id", {:controller=> "actors", :action => "update"})
  get("/create_actor", {:controller => "actors", :action=>"create_actor"})
  get("/actor/:id/destroy", {:controller=> "actors", :action => "destroy"})
end
