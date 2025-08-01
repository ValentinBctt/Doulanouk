class RdvsController < ApplicationController
  def new
    @rdv = Rdv.new
    @prestations = Prestation.all
    @soins = Soin.all
    @accompagnements = Accompagnement.all
  end

  def create
    @rdv = Rdv.new(rdv_params)
    if @rdv.save
      RdvMailer.new_rdv_email(@rdv).deliver_now
      redirect_to @rdv, notice: 'Votre RDV a été pris avec succès.'
    else
      @prestations = Prestation.all
      @soins = Soin.all
      @accompagnements = Accompagnement.all
      render :new,
      notice: 'Votre RDV n\'a pas pu être pris.'
    end
  end

  private

  def rdv_params
    params.require(:rdv).permit(:first_name, :last_name, :email, :phone, :postal_code, :city, :prestation_id, :message, :date, :hour)
  end
end
