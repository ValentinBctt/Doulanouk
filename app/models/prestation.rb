class Prestation < ApplicationRecord
  has_one_attached :image
  has_many :rdvs
end
