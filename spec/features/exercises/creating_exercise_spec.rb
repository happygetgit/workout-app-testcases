require "rails_helper"

RSpec.feature "Creating Excercise" do
    before do
        @john = User.create(email: "john@example.com", password: "password")
        login_as(@john)
    end

    scenario "with valid inputs" do
        visit "/"

        click_link "My Lounge"
        click_link "New Workout"
        expect(page).to have_link("Back")

        fill_in "Duration", with: 70
        fill_in "Workout Details", with: "Weight Lifting"
        fill_in "Activity Date", with: "2016-07-26"
        click_button "Create Excercise"

        expect(page).to have_content("Excercise has been created")

        excercise = Excercise.last
        expect(current_path).to eq(user_excercise_path(@john, excercise))
        expect(excercise.user_id).to eq(@john.id)
    end

end
