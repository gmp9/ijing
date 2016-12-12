class ChoicesController < ApplicationController

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(secure_params)
    @comp_choice = Choice.new
    @comp_choice ||= []
    new_gua = params[:choice]
    @new_gua = @choice.new_gua
    
    if @new_gua ==  "x"
      #call the randomized computer pick
      @comp_choice = @comp_choice.comp_choice
      render 'gua'
    else
      render :new
    end
     
  end

  private

  def secure_params
    params.require(:choice).permit(:new_gua)
  end

end