class Product < ActiveRecord::Base
	belongs_to :category
	has_attached_file :photo, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>", :mini => "50x50>" }, :default_url => "missing_:style.png"

end
