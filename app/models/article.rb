class Article < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :content
    validates :category_id
    validates :language_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :language
end
