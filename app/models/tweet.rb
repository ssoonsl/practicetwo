class Tweet < ApplicationRecord

  belongs_to :user

  has_many :tweettags
  has_many :tags, through: :tweettags

end
