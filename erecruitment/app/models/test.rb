class Test < ActiveRecord::Base
	attr_accessible :set_by, :number_of_questions, :duration, :cutoff
	 validates :set_by, :number_of_questions, :duration, :cutoff, presence:true, allow_blank: true
	 validates :number_of_questions, numericality: {greater_than_or_equal_to: 1}
	 validates :duration, numericality: {greater_than_or_equal_to: 1}
	 validates :cutoff, numericality: {greater_than_or_equal_to: 1}

end
