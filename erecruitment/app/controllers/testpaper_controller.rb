class TestpaperController < ApplicationController
  def test
  	test_id=params[:test_id]
  	question_id=params[:question_id]
  	@user_id=session[:user_id]

    if(question_id == "-1")
      total_questions=Test.find_by_sql("select number_of_questions from tests where id="+test_id)
      session[:question_count]=total_questions.first.number_of_questions+1
    end

    count=session[:question_count].to_i
    count=count-1
    session[:question_count]=count
  	
    if(count==0)     
        sql="select count(*) as c from answers a join my_questions q where a.question_id=q.id AND a.selected_answer=q.anwser AND a.user_id="+session[:user_id].to_s
        marks_obtained=Answer.find_by_sql(sql).first.c.to_i
        sql="select cutoff from tests where tests.id="+session[:test_id]
        cutoff_marks=Test.find_by_sql(sql).first.cutoff.to_i
        if(marks_obtained<cutoff_marks)
          
              result="fail"
          
        else
          
            result="pass"
          
        end
        test_result = TestResult.new(:test_id=> session[:test_id], :user_id => session[:user_id], :marks => marks_obtained, :pass_or_fail => result, :notification_status => "pending")
        if test_result.save
          redirect_to candidates_index_url 
          #finish test add test finish page later  
        else
          format.html { render action: 'new' }
          format.json { render json: @answer.errors, status: :unprocessable_entity }
        end
        
    else

    sql="select set_by from tests where id="+test_id
  	test_owner=Test.find_by_sql(sql)


  	sql="select id from my_questions where created_by='"+test_owner.first.set_by+"' and id>"+question_id+" limit 1"
  	question_id=My_question.find_by_sql(sql)
    session[:question_id]=question_id.first
    session[:test_id]=test_id
  	redirect_to new_answer_url(:test_id => test_id, :question_id => question_id.first, :user_id => @user_id)
  end
  
  end
end
