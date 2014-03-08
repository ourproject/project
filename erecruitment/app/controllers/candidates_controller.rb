class CandidatesController < ApplicationController
	layout "candidatelayout"
  def index
  end

  def show_tests
  	@tests=Test.all
  end
end
