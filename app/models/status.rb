class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '0%' },
    { id: 2, name: '50%' },
    { id: 3, name: '100%' }
  ]

  include ActiveHash::Associations
  has_many :phrases

end