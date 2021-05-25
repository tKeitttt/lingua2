class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Question' },
    { id: 2, name: 'Life' },
    { id: 3, name: 'Travel' },
    { id: 3, name: 'Business' },
    { id: 3, name: 'Other' }
  ]

  include ActiveHash::Associations
  has_many :articles

end