class Phrase < ApplicationRecord
  has_many :phrase_tag_relations
  has_many :tags, through: :phrase_tag_relations
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
end
