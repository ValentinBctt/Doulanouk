class PrestationsController < ApplicationController
  before_action :set_prestation, only: %i[show edit update destroy]

  def index
    @prestations = Prestation.all

      @soins = Soin.all
      @accompagnements = Accompagnement.all


  end

  def show
  end

  def new
    @prestation = Prestation.new
  end

  def create
    @prestation = Prestation.new(prestation_params)
    if @prestation.save
      redirect_to @prestation, notice: 'Prestation créée avec succès.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @prestation.update(prestation_params)
      redirect_to @prestation, notice: 'Prestation mise à jour avec succès.'
    else
      render :edit
    end
  end

  def destroy
    @prestation.destroy
    redirect_to prestations_url, notice: 'Prestation supprimée.'
  end

  private

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end

  def prestation_params
    params.require(:prestation).permit(:titre, :description, :prix, :image)
  end
end
