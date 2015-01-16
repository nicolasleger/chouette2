module Features
  module SessionHelpers
    def sign_up_with(email, password, confirmation)
      visit new_user_session_path
      fill_in '#registration_new #user_email', with: email
      fill_in 'Password', with: password
      fill_in 'Password confirmation', :with => confirmation
      click_button 'Sign up'
    end

    def signin(email, password)
      visit new_user_session_path
      # save_and_open_page
      fill_in '#session_new #user_email', with: email
      fill_in 'Password', with: password
      click_button 'Sign in'
    end
  end
end