require 'rails_helper.rb'

feature "Trainee navigates to the workout log" do
    scenario "Trainee successfully navigates to the new workout log page from the homepage" do
    
    visit logs_path
    expect(page).to have_content("Workout Logs")
    click_link "New Workout Log"
    expect(page).to have_content("Workout Logs")
    expect(page).to have_field("Title")
    expect(page).to have_field("Text")
    end
    
    scenario "Trainee successfully adds new workout log" do
    visit new_log_path
    expect(page).to have_content("New Workout Log")
    fill_in "Title", with: "New workout log"
    fill_in "Text", with: "New workout log 1"
    click_button "Create Log"
    expect(page).to have_content("New workout log")
    expect(page).to have_content("New workout log 1")
    end
    
    scenario "Trainee successfully updates their workout log" do
        
    visit new_log_path
    expect(page).to have_content("Workout Logs")
    click_link "New Workout Log"
    fill_in "Title", with: "New workout log"
    fill_in "Text", with: "New workout log 1"
    click_button "Create Log"
    click_link "Edit"
    expect(page).to have_content("New workout log")
    fill_in "Title", with: "New workout log (edited)"
    fill_in "Text", with: "New workout log 1 (edited)"
    click_button "Update Log"
    expect(page).to have_content("New workout log 1 (edited)")
    end
    
    scenario "Trainee successfully deletes their workout log" do
    
    visit new_log_path
    expect(page).to have_content("Workout Logs")
    click_link "New Workout Log"
    fill_in "Title", with: "New workout log (destroy)"
    fill_in "Text", with: "New workout log 1 (destroy)"
    click_button "Create Log"
    click_link "Destroy"
    expect(page).to have_no_content("New workout log (destroy)")
    end
end