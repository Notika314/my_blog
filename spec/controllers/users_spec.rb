require_relative "../spec_helper"

describe "User Controller" do
  it "responses to get /users/main" do
    get "/users/main"
    expect(last_response).to be_ok
  end
end

