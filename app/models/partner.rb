class Partner < ActiveRecord::Base

	# VALIDATIONS
	validates :user_id_1, :presence => true
	validates :user_id_2, :presence => true

	# ASSOCIATIONS
	has_many :users
	has_many :outings

end
