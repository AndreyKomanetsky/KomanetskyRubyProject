class CargooutsController < ApplicationController
  def new
    @cargoout = Cargoout.new
  end

  def list
    @cargooutcall = Cargoout.all
  end
  
  def create    
    @operator = User.find_by(id: session[:user_id]).name
    if Cargoperm.find_by(number: params[:cargoout][:number])
      @permission = true
    else
      @permission = false
    end
    @cargoout = Cargoout.new(cargoout_params)
    
    if @cargoout.save
      @cargoout.update_attribute(:author, @operator)
      @cargoout.update_attribute(:permission, @permission)
      redirect_to action: "list"
    else
      render 'new'
    end
  end

  private

    def cargoout_params
           
      params.require(:cargoout).permit(:name, :number)
    end
end
