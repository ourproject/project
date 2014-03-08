class TestResult < ActiveRecord::Base
	attr_accessible :test_id, :user_id, :marks, :pass_or_fail, :notification_status
end
