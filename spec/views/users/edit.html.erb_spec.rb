require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  let(:user) {
    User.create!(
      username: "MyString",
      email: "MyString",
      password: "MyString"
    )
  }

  before(:each) do
    assign(:user, user)
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(user), "post" do

      assert_select "input[name=?]", "user[username]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[password]"
    end
  end
end
