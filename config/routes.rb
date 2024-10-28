Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "rules"})
  
  get("/rock", { :controller => "zebra", :action => "rock_moves"})

  get("/paper", { :controller => "zebra", :action => "paper_moves"})

  get("/scissors", { :controller => "zebra", :action => "scissors_moves"})
end
