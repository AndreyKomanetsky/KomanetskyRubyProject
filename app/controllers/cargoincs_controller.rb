class CargoincsController < ApplicationController
  def new
    @cargoinc = Cargoinc.new
  end

  def list
    @cargoincall = Cargoinc.all
  end
  
  def create    
    @operator = User.find_by(id: session[:user_id]).name
    if Cargoperm.find_by(number: params[:cargoinc][:number])
      @permission = true
    else
      @permission = false
    end
    @cargoinc = Cargoinc.new(cargoinc_params)
    
    if @cargoinc.save
      @cargoinc.update_attribute(:author, @operator)
      @cargoinc.update_attribute(:permission, @permission)
      redirect_to action: "list"
    else
      render 'new'
    end
  end

  private

    def cargoinc_params
           
      params.require(:cargoinc).permit(:name, :number)
    end
end
