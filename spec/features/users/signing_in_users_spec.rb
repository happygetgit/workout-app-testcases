require "rails_helper"

RSpec.feature "User sign" do
    before do
        @user = User.create!(email: "john@example.com", password: "password")
    end
    scenario "signin with valid details" do
        visit "/"

        click_link "Sign-in"

        fill_in "Email", with: @user.email
        fill_in "Password", with: @user.password

        click_button("Log in")

        expect(page).to have_content("Signed in successfully.")
        expect(page).to have_content("Signed in as #{@user.email}")
    end
end