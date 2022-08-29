require 'rails_helper'

RSpec.describe "CreatingAvailabilityHours", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays all the availability hours of seller.' do
    visit '/sellers/dashboard/availability_hours/new'

    fill_in 'day', with: 'Wednesday'
    fill_in 'start_time', with: '11.08'
    fill_in 'end_time', with: '18.08'

    click_on 'Add'

    expect(page).to have_content('Monday')
    expect(page).to have_content('11.08')
    expect(page).to have_content('18.08')

    availability_hour = AvailabilityHour.order("id").last
    expect(availability_hour.day).to eq(2)
    expect(availability_hour.start_time).to eq('11.08')
    expect(availability_hour.end_time).to eq('18.08')
  end

end
