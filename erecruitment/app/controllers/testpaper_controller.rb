class TestpaperController < ApplicationController
  def index
  	#@my_questions=My_question.paginate(:page => params[:page], :per_page => 1).order(:created_by)
  	#@temp=My_question.find_by_question_type("demo").paginate(:page => params[:page], :per_page => 1)
  	@marks_obtained=0
  	@user=User.find(session[:user_id])
    test_type=params[:test_owner]
  	sql="select * from my_questions where created_by='"+test_type+"'"
    @temp = My_question.paginate_by_sql(sql, :page =>params[:page], :per_page => 1,  :previous_label => '')
    end
end