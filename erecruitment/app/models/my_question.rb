class My_question < ActiveRecord::Base
	 attr_accessible :anwser, :option_a, :option_b, :option_c, :option_d, :question, :difficulty_level, :created_by, :question_type

	 validates :question, :option_a, :option_b, :option_c, :option_d, :anwser, :created_by, :question_type, :difficulty_level, presence: true,allow_blank: true
     validates :question, uniqueness: true
     validates :difficulty_level, numericality: {greater_than_or_equal_to: 1}
end
