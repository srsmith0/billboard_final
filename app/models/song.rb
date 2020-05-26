class Song < ApplicationRecord
  belongs_to :artist
  has_many :rankings, dependent: :destroy
  has_many :billboards, through: :rankings
end
