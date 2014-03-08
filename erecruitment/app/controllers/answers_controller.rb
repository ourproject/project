class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  

  


  def index
    @answers = Answer.all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
    question_id=params[:question_id]
    @q_id=params[:question_id]
    @test_id=params[:test_id]
    @user_id=params[:user_id]
    @current_question=My_question.find(question_id)
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create

    @answer = Answer.new(:test_id=> session[:test_id], :user_id => session[:user_id], :question_id => session[:question_id], :selected_answer => params[:selected_option])

    #respond_to do |format|
      if @answer.save
        tid=session[:test_id]
        qid=session[:question_id]
        #session[:test_id]=nil
        #session[:question_id]=nil
        redirect_to testpaper_test_url(:test_id => tid , :question_id => qid)
      else
        format.html { render action: 'new' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:test_id, :user_id, :question_id, :selected_answer)
    end
end
