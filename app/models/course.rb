class Course < ActiveRecord::Base
	has_many :registers
	has_many :users, through: :registers
end
