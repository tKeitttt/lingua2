class RoomsController < ApplicationController


  def new
    @room=Room.new
    
    @id=params[:key_id]
    @name=params[:key_name]
  end

  def create 
    Room.create(roomname:"#{params[:roomname]}",user_ids:params[:user_ids])
    redirect_to root_path
  end
  
  
end
