get "/authentication/login" do
 erb :"authentication/login"
end

get "/authentication/signup" do
 erb :"authentication/signup"
end

get "/authentication/logout" do
  session[:user_id] = nil
  redirect "/"
end

post "/authentication/signin" do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "users/main"
  else
    "something went wrong"
  end
end

post "/authentication/register_user" do
  "#{params}"
  if params[:password] == params[:password_confirm]
  user = User.create(name: params[:name], email: params[:email], password: params[:password])
  session[:user_id] = user.id
  redirect "/users/main"
  else
    "something went wrong"
  end
end
