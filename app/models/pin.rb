class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300*300>", :thumb => "100*100"}
	validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
end