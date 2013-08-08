require 'acceptance/acceptance_helper'

feature 'My first feature', %q{
  In order to ...
  As a ...
  I want ...
} do

  scenario 'first scenario' do
    true.should == true
  end

  scenario 'Home Links' do
		visit root_path
		page.should have_link "Sign In"
		page.should have_link "Home"
		page.should have_link "Login to Admin"
		page.should have_link "Spanish"
   end

=begin
  background do
    login_user!('negoxp87@gmail.com', 'Pasion8576')
  end

   scenario "Add products to store" do
     visit new_product_path

	 fill_in :product_name,   :with => 'producto 1' 
  	 fill_in :product_description, :with => 'descripcion prduto'
  	 fill_in :product_price,   :with => '32' 

     #click_link_or_button 'Create Product'
     click_button 'Create Product'

     page.should have_css('div', :text => 'Product created.')
   end
=end

scenario "login like a admin" do
  visit homepage
  click_link_or_button 'Login to Admin'
  click_link_or_button 'Sign up'

  fill_in :admin_email,   :with => 'negoxp@gmail.com' 
  fill_in :admin_password, :with => 'Pasion8576'
  fill_in :admin_password_confirmation, :with => 'Pasion8576'

  click_link_or_button 'Sign up'
  
  page.should have_css('div', :text => 'Welcome! You have signed up successfully.')
  
end


end
