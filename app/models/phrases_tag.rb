class PhrasesTag

  include ActiveModel::Model
  attr_accessor :native, :foreignA, :foreignB, :foreignC, :explanation, :status_id, :tagname, :user_id

  with_options presence: true do
    validates :native
    validates :tagname
    validates :user_id
  end

  def save(tag_list)
    phrase = Phrase.create(native:native, foreignA:foreignA, foreignB:foreignB, foreignC:foreignC, explanation:explanation, status_id:status_id, user_id:user_id)
    
    tag_list.each do |tagname|
      tag = Tag.where(tagname: tagname).first_or_initialize
      tag.save
      PhraseTagRelation.create(phrase_id: phrase.id, tag_id: tag.id)
    end
  end

end