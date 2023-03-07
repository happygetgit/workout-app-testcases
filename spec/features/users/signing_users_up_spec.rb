require "rails_helper"

RSpec.feature "User signup form" do
    scenario "user signup with valid details" do
        visit "/"

        click_link("Signup")

        fill_in "Email", with: "john@example.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"

        click_button "Sign up"

        expect(page).to have_content("Welcome! You have signed up successfully.")
    end
end