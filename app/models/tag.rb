class Tag < ApplicationRecord
  
  has_many :phrase_tag_relations
  has_many :phrases, through: :phrase_tag_relations

  validates :tagname, uniqueness: true
  
end
