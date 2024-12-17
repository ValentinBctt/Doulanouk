# filepath: /home/valentinbctt/code/ValentinBctt/Doulanouk/app/models/rdv.rb
class Rdv < ApplicationRecord
  belongs_to :prestation
  validates :message, presence: true
  validates :prestation, presence: true
  validates :message, presence: true
  
end
