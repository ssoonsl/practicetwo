class Tag < ApplicationRecord

  has_many :tweettags
  has_many :tweets, through: :tweettags

end
