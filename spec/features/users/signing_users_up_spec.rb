require "rails_helper"

RSpec.feature "User signup form" do
    scenario "user signup with valid details" do
        visit "/"

        click_link("Signup")

        fill_in "First name", with: "John"
        fill_in "Last name", with: "Doe"
        fill_in "Email", with: "john@example.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"

        click_button "Sign up"

        expect(page).to have_content("Welcome! You have signed up successfully.")

        user = User.last
        room = user.room
        room_name = user.full_name.split(" ").join("-")
        expect(room.name).to eq(room_name)

        visit "/"
        expect(page).to have_content("John Doe")
    end

    scenario "user signup with invalid details" do
        visit "/"

        click_link("Signup")

        fill_in "First name", with: ""
        fill_in "Last name", with: ""
        fill_in "Email", with: ""
        fill_in "Password", with: ""
        fill_in "Password confirmation", with: ""

        click_button "Sign up"

        expect(page).to have_content("First name can't be blank")
        expect(page).to have_content("Last name can't be blank")
        
    end
end