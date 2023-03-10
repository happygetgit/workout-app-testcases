require "rails_helper"

RSpec.feature "Listing Exercises" do
    before do
        @john = User.create(email: "john@example.com", password: "password")
        login_as(@john)

        @e1 = @john.exercises.create( duration_in_min: 20,
                                        workout: "My body building activity",
                                        workout_date: Date.today
                                     )
        @e2 = @john.exercises.create( duration_in_min: 55,
                                        workout: "Weight lifting",
                                        workout_date: 2.days.ago
                                    )
        @e3 = @john.exercises.create( duration_in_min: 35,
                                    workout: "Threadmill workout",
                                    workout_date: 6.days.ago
                                )
                
    end

    scenario "show users workout for last 7days" do
        visit "/"

        click_link "My Lounge"

        expect(page).to have_content(@e1.duration_in_min)
        expect(page).to have_content(@e1.workout)
        expect(page).to have_content(@e1.workout_date)

        expect(page).to have_content(@e2.duration_in_min)
        expect(page).to have_content(@e2.workout)
        expect(page).to have_content(@e2.workout_date)

        expect(page).to have_content(@e3.duration_in_min)
        expect(page).to have_content(@e3.workout)
        expect(page).to have_content(@e3.workout_date)

    end

    scenario "show no exercises if none created" do
        @john.exercises.delete_all
        
        visit "/"

        click_link "My Lounge"
        expect(page).to have_content("No Workouts yet")
        
    end
end

