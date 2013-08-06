require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_admin_validations
  		admin = Admin.new
  		assert !admin.save, "should not save admin without email" 
  	end
end
