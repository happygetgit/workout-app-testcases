require 'rails_helper'

RSpec.feature 'Home page feature spec' do

    scenario 'Visiting the homepage' do
        visit '/'

        expect(page).to have_link('Home')
        expect(page).to have_link('Atheletes Den')
        expect(page).to have_content('Workout Longue!')
        expect(page).to have_content('Show off your workout')
    end
end