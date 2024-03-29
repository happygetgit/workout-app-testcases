require "rails_helper"

RSpec.feature "User Signout" do
    before do
        @user = User.create(first_name: "John", last_name: "Doe", email: "john@example.com", password: "password")
        visit "/"

        click_link("Sign-in")

        fill_in "Email", with: @user.email
        fill_in "Password", with: @user.password

        click_button("Log in")
    end

    scenario "user sign out" do
        click_link("Sign out")
        expect(page).to have_content("Signed out successfully.")

    end
end