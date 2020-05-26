class Billboard < ApplicationRecord
  has_many :rankings, dependent: :destroy
  has_many :songs, through: :rankings
end
