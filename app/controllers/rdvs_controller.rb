# filepath: /home/valentinbctt/code/ValentinBctt/Doulanouk/app/controllers/rdvs_controller.rb
class RdvsController < ApplicationController
  def new
    @rdv = Rdv.new
    @prestations = Prestation.all
  end


end
