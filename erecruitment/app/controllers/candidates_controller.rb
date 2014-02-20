class CandidatesController < ApplicationController
  def index
  end

  def show_tests
  	@tests=Test.all
  end
end
