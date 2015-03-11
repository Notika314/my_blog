post "/posts/create" do
  @user=User.find(session[:user_id])
  @post = Post.create(user_id: @user.id, title: params[:title],body: params[:body])
  redirect back
end

post "/posts/create.json" do
  content_type :json
  user = User.find(session[:user_id])
  post=Post.create(body: params[:body], title: params[:title], user_id: user.id)
  comment.to_json
end

delete "/post/:id" do
  @post=Post.find(params[:id])
  @post.destroy
  redirect "/users/main"
end

delete '/comment/:id' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  if request.xhr?
   "deleted"
  else
    redirect "/users/main"
  end
end
