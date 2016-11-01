Rails.application.routes.draw do

  get("/", {:controller=> "movies", :action => "index"})
  get("/movie", {:controller=> "movies", :action => "index"})
end
