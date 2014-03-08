class Answer < ActiveRecord::Base
	attr_accessible :test_id , :user_id , :question_id , :selected_answer, :notificatio_status
end
