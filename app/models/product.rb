class Product < ActiveRecord::Base
	validates :name, :price, :category_id, presence: true
	#validates_associated :books
	belongs_to :category
	has_attached_file :photo, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>", :mini => "50x50>" }, :default_url => "missing_:style.png"

end
