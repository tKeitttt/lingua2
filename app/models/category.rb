class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Question' },
    { id: 2, name: 'Life' },
    { id: 3, name: 'Travel' },
    { id: 4, name: 'Business' },
    { id: 5, name: 'Other' }
  ]

  include ActiveHash::Associations
  has_many :articles

end