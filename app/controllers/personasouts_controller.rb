class PersonasoutsController < ApplicationController
  def new
    @personout = Personasout.new
  end

  def list
    @personoutall = Personasout.all
  end
  
  def create    
    @operator = User.find_by(id: session[:user_id]).name
    if Personperm.find_by(passport: params[:personasout][:passport])
      @permission = true
    else
      @permission = false
    end
    @personout = Personasout.new(personout_params)
    
    if @personout.save
      @personout.update_attribute(:author, @operator)
      @personout.update_attribute(:permission, @permission)
      redirect_to action: "list"
    else
      render 'new'
    end
  end

  private

    def personout_params
           
      params.require(:personasout).permit(:name, :passport)
    end
end
