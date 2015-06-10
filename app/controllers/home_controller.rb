class HomeController < ApplicationController

  def form

    @survey = Survey.create!(name: params[:name], chocolate: params[:chocolate], rainbows: params[:rainbows], puppies: params[:puppies], cash: params[:cash],)
    respond_to do |format|
      if @survey.save
        format.html { redirect_to home_show_path }
      end
    end
  end

  def show

    @survey = Survey.find_by_name(params[:name])

  end

end
