require "rails_helper"

RSpec.feature "Unfollowing friend" do
    before do
        @john = User.create(first_name: "John",
                            last_name: "Doe",
                            email: "john@example.com",
                            password: "password")
        @sarah = User.create(first_name: "Sarah",
                            last_name: "Doe",
                            email: "sarah@example.com",
                            password: "password")
        login_as(@john)
        @following = Friendship.create(user: @john, friend: @sarah)
    end

    scenario do
        visit "/"

        click_link "My Lounge"
        link = "a[href='/friendships/#{@following.id}'][data-method='delete']"
        find(link).click

        expect(page).to have_content(@sarah.full_name + " unfollow")
    end

end