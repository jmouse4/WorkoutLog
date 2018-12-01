require 'rails_helper.rb'

feature "Trainee adds a workout log" do
    scenario "Trainee successfully navigates to the new workout log page from the homepage" do
    
    visit logs_path
    expect(page).to have_content("Workout Logs")
    click_link "New Workout Log"
    expect(page).to have_content("Workout Logs")
    expect(page).to have_field("Title")
    expect(page).to have_field("Text")
    end
end