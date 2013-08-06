require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def test_user_validations
  		user = User.new
  		assert !user.save, "should not save user without email" 
  	end

end
