class PhrasesController < ApplicationController
  
  def progress
    @progress="Hello"
  end

  def new
    @phrase = PhrasesTag.new
  end

  def create
    @phrase = PhrasesTag.new(phrase_params)
    tag_list = params[:phrases_tag][:tagname].split(',')
    if @phrase.valid?
      @phrase.save(tag_list)
      
      return redirect_to root_path
    else
      render "new"
    end
  end

  def search
  end

  def exrecise
  end


  private

  def phrase_params
    params.require(:phrases_tag).permit(:native, :foreignA, :foreignB, :foreignC, :explanation, :status_id, :tagname).merge(user_id: current_user.id)
  end

end
