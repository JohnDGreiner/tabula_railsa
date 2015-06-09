class HomeController < ApplicationController

  def form

    @survey = Survey.new

    respond_to do |format|
      if @survey.save
        format.html { redirect_to ty }
      end
    end
  end

end
