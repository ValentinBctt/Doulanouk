# filepath: /home/valentinbctt/code/ValentinBctt/Doulanouk/app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    @prestations = Prestation.all
  end
end
