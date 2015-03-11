post "/posts/create" do
  @user=User.find(session[:user_id])
  @post = Post.create(user_id: @user.id, title: params[:title],body: params[:body])
  redirect back
end
