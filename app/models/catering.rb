class Catering < ActiveRecord::Base
	has_many :offices
	validates :title, presence: true, length: { minimum: 5 }
end
