class OuttransportsController < ApplicationController
  def new
    @transportout = Outtransport.new
  end

  def list
    @transportoutall = Outtransport.all
  end
  
  def create    
    @operator = User.find_by(id: session[:user_id]).name
    if Tranperm.find_by(gozznak: params[:outtransport][:gozznak])
      @permission = true
    else
      @permission = false
    end
    @transportout = Outtransport.new(transportin_params)
    
    if @transportout.save
      @transportout.update_attribute(:author, @operator)
      @transportout.update_attribute(:permission, @permission)
      redirect_to action: "list"
    else
      render 'new'
    end
  end

  private

    def transportin_params
           
      params.require(:outtransport).permit(:mark, :gozznak)
    end
end
