require_relative "../spec_helper"

describe "Post Controller" do
  it "responses to delete /post/:id" do
    delete "/post/:id"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end
end


