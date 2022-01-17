class InctransportsController < ApplicationController
  def new
    @transportin = Inctransport.new
  end

  def list
    @transportinall = Inctransport.all
  end
  
  def create    
    @operator = User.find_by(id: session[:user_id]).name
    if Tranperm.find_by(gozznak: params[:inctransport][:gozznak])
      @permission = true
    else
      @permission = false
    end
    @transportin = Inctransport.new(transportin_params)
    
    if @transportin.save
      @transportin.update_attribute(:author, @operator)
      @transportin.update_attribute(:permission, true)
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
