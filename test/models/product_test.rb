require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  def test_the_truth
  	assert true
  end

  def test_validations
  	product = Product.new
  	assert !product.save, "should not save product without name, category, price or description" 
  end

end
