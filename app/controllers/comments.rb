post "/comments/create" do
  user = User.find(session[:user_id])
  # "#{params[:body]}, #{params[:post_id]}, #{user.id}"
  comment=Comment.create(body: params[:body], user_id: user.id, post_id: params[:post_id])
  redirect back
end

post "comments/create.json" do
  user = User.find(session[:user_id])


end
