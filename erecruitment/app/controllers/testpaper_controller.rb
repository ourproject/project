class TestpaperController < ApplicationController
  def index
  	#@my_questions=My_question.paginate(:page => params[:page], :per_page => 1).order(:created_by)
  	#@temp=My_question.find_by_question_type("demo").paginate(:page => params[:page], :per_page => 1)
  	@marks_obtained=0
  	sql="select * from my_questions where question_type='demo'"
    @temp = My_question.paginate_by_sql(sql, :page =>params[:page], :per_page => 1,  :previous_label => nil)
    if(My_question.find(params[:qid])==params[:selected_option])
    	{
    		@marks_obtained=@marks_obtained+1
    	}
    end
  end
end