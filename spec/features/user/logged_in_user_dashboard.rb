require 'rails_helper'

describe 'User logged in viewing dashboard' do
  it 'A logged in user visits /dashboard and sees dashboard attributes' do
    @user = create(:user, password: 'password')
    @following = create(:following, user: @user)
    @following2 = create(:following, user: @user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    
    visit '/dashboard'
  
    #TODO restrict content on user page
    # when oauth completed
    # click_on "login"

    # expect(current_path).to eq(login_path)

    # fill_in 'session[email]', with: @user.email
    # fill_in 'session[password]', with: @user.password

    # click_on 'Log In'
    expect(current_path).to eq(dashboard_path)
    # expect(page).to have_content(@user.email)
    expect(page).to have_content(@user.user_name)

    expect(page).to have_css(".following", count:2)
    expect(page).to have_content("Following")
    expect(page).to have_content("Edit Profile")
    expect(page).to have_content("Podcast Application")
  end
end