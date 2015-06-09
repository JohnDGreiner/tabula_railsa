class HomeController < ApplicationController

  def form

    @survey = Survey.create!(name: params[:name], chocolate: params[:chocolate], rainbows: params[:rainbows], puppies: params[:puppies], cash: params[:cash],)

  end

end
