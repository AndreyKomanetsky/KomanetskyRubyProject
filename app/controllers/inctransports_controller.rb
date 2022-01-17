class InctransportsController < ApplicationController
  def new
    @transportin = Inctransport.new
  end

  def list
    @transportinall = Inctransport.all
  end
  
  def create
    @transportin = Inctransport.new(transportin_params)
    if @transportin.save
      redirect_to action: "list"
    else
      render 'new'
    end
  end

  private

    def transportin_params
      params.require(:inctransport).permit(:mark, :gozznak)
    end
end
