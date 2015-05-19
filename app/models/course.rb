class Course < ActiveRecord::Base
	has_many :registrants
	has_many :users, through: :registrants
end
