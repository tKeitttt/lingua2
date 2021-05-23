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
    @keywords = params[:keyword]
    if @keywords != "" && @keywords != nil     
      @split_keywords = @keywords.split(",")
      @phrases = Phrase.all
      @split_keywords.each do |keyword|
        @phrases=@phrases.where(['native LIKE(?) OR foreignA LIKE(?) OR foreignB LIKE(?) OR foreignC LIKE(?)',"%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])          
      end
      @phrasescount=@phrases.count
      @phrases=@phrases.page(params[:page]).per(10)
    end
  end

  def exrecise
  end


  private

  def phrase_params
    params.require(:phrases_tag).permit(:native, :foreignA, :foreignB, :foreignC, :explanation, :status_id, :tagname).merge(user_id: current_user.id)
  end

end
