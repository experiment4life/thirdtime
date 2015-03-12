# == Schema Information
#
# Table name: pins
#
#  id                 :integer          not null, primary key
#  description        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#
# Indexes
#
#  index_pins_on_user_id  (user_id)
#

class Pin < ActiveRecord::Base
	
	 belongs_to :user
	 has_attached_file :image , :styles => { :medium => "300x300>", :thumb => "100x100>" }
	 validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
