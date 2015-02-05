# == Schema Information
#
# Table name: pins
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_pins_on_user_id  (user_id)
#

class Pin < ActiveRecord::Base
	
	 belongs_to :user
end
