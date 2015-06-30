require 'rails_helper'

RSpec.describe 'Welcome Flow', type: :feature do
	it "shows a welcome message on the homepage" do
		visit root_path
		expect(page).to have_content 'Welcome'		
  end
end
