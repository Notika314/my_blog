require_relative "../spec_helper"

 describe "User Model" do
   let(:first_user) { User.new(name: "Susanna", email: "susanna@gmail.com", password: "1234")}
   let(:other_user)  { User.new(name: "Charlotte", email: "charlotte@gmail.com", password: "1234")}

   it "saves user to database" do
     first_user.save
     other_user.save
     saved_user = User.find_by(name: "Susanna")
     expect(saved_user.email).to eq("susanna@gmail.com")
   end

   it "enrypts a password for the user" do
     saved_user = User.find_by(name: "Charlotte")
     expect(saved_user.password_digest).not_to eq("1234")
   end
 end
