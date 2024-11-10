Rails.application.routes.draw do

 get "up" => "rails/health#show", as: :rails_health_check
 

 get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
 get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
 
 root "blog_posts#index"
end
