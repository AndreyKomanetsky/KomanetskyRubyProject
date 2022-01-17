class PersonasincsController < ApplicationController
  def new
    @personin = Personasinc.new
  end

  def list
    @personinall = Personasinc.all
  end
  
  def create    
    @operator = User.find_by(id: session[:user_id]).name
    if Personperm.find_by(passport: params[:personasinc][:passport])
      @permission = true
    else
      @permission = false
    end
    @personin = Personasinc.new(personin_params)
    
    if @personin.save
      @personin.update_attribute(:author, @operator)
      @personin.update_attribute(:permission, @permission)
      redirect_to action: "list"
    else
      render 'new'
    end
  end

  private

    def personin_params
           
      params.require(:personasinc).permit(:name, :passport)
    end
end
