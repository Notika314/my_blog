get "/users/main" do
  @posts = Post.all
  erb :"users/main"
end
