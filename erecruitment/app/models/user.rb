class User < ActiveRecord::Base
USER_ROLE=[ "Candidate", "Organisation" ]
attr_accessible :name, :email_id, :date_of_birth, :address, :role, :qualification, :password, :password_confirmation

validates :name,
	:presence => TRUE,
	:length => {
		:minimum => 2,
		:allow_blank => TRUE
	}
validates :role,
	:presence => TRUE


validates :password,
	:presence => TRUE,
	:length => {
		:minimum => 6,
		:allow_blank => TRUE
	},
	:confirmation => TRUE

validates :password_confirmation,
	:presence => TRUE

validates :email_id, 
	:presence => true, 
	:uniqueness=> true
end