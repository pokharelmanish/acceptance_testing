# frozen_string_literal: true

require 'helper_methods'

describe 'Dashboard Ready', type: :feature do
  before do
    visit '/'
    login_user
  end

  after do
    clear_user_login
  end

  it 'has a Start Screening link' do
    visit '/intake'
    expect(page).to have_button('Start Screening')
  end

end
