require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_category_validations
  		category = Category.new
  		assert !category.save, "should not category user without name" 
  end
end
