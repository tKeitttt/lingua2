class Language < ActiveHash::Base
  self.data = [
    { id: 1, name: '日本語' },
    { id: 2, name: 'English' },
    { id: 3, name: 'Français' },
    { id: 4, name: 'Español' }
  ]

  include ActiveHash::Associations
  has_many :articles

end