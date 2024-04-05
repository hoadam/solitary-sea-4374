require 'rails_helper'

RSpec.describe 'Search', type: :feature do
  describe 'When users visit Search Index Page', :vcr do
    it "shows the population of the choosen nation and the details of the first 25 members" do
      visit root_path
      select 'Fire Nation', from: 'nation'
      click_on 'Search For Members'
      expect(current_path).to eq(search_path)
      expect(page).to have_css('.members', count: 25)
      expect(page).to have_content('Total Number of People:')
    end
  end
end
