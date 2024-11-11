Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # get "/blog_posts", to: "blog_posts#index", as: :blog_posts
  get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  root "blog_posts#index"
end
 