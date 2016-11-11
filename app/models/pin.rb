class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300*300>", :thumb => "100*100"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/gif", "image/png"]
	validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]
end