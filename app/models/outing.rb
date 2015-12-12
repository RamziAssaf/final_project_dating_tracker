class Outing < ActiveRecord::Base

	# VALIDATIONS
	validates :activity, :presence => true

	# ASSOCIATIONS
	belongs_to :partner
	
end
