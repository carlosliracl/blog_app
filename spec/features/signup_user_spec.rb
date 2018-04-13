# visit root
# click on sign up link
# fill email
# fill password
# fill password confirmation
# click signup button
# // invalid 
# visit root
# click on signup link
# click signup button

require "rails_helper"

RSpec.feature "Signup Users" do
    scenario "with valid credentials" do 
        visit "/"
        click_link "Sign up"
        fill_in "Email", with: "user@email.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Sign up"

        expect(page).to have_content("You have signed up successfully")

    end
    scenario "with invalid credentials" do 
        visit "/"
        click_link "Sign up"
        fill_in "Email", with: ""
        fill_in "Password", with: ""
        fill_in "Password confirmation", with: ""
        click_button "Sign up"
        # expect(page).to have_content("You have not signed up successfully")
    end
end