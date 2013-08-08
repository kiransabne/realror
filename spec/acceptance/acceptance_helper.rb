require 'spec_helper'

# Put your acceptance spec helpers inside spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

def login_user!(email, password)
  visit homepage
  click_link_or_button 'Login to Admin'
  click_link_or_button 'Sign up'

  fill_in :admin_email,   :with => email 
  fill_in :admin_password, :with => password
  fill_in :admin_password_confirmation, :with => password

  click_link_or_button 'Sign up'
 
end