class TransportInController < ApplicationController

  def showlist
    @transportinall = TransportIn.all
  end

  def inccreate
    @transportin = TransportIn.new
  end

  def create
    @transportin = TransportIn.new(transportin_params)
    if @transportin.save
      redirect_to :back
    else
      render 'inccreate'
    end
  end

  private

    def transportin_params
      params.require(:TransportIn).permit(:mark, :gozznak)
    end
end
