class Photo < ApplicationRecord
  has_many :comment
  belongs_to :user
end
