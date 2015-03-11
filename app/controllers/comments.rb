post "/comments/create" do
  user = User.find(session[:user_id])
  # "#{params[:body]}, #{params[:post_id]}, #{user.id}"
  comment=Comment.create(body: params[:body], user_id: user.id, post_id: params[:post_id])
  redirect back
end

post "/comments/create.json" do
  content_type :json
  user = User.find(session[:user_id])
  comment=Comment.create(body: params[:body], user_id: user.id, post_id: params[:post_id])
  comment.to_json
end

get "/comment/:id/delete" do
  comment = Comment.find(params[:id])
  comment.destroy
  redirect back
  # comment = Comment.find(params[:id])
end

get "/comment/:id/edit" do
  @comment = Comment.find(params[:id])
  erb :"comments/edit"
end

put "/comment/:id" do
  @comment = Comment.find(params[:id])
  @comment.update(body: params[:body])
  redirect "/users/main"
end
