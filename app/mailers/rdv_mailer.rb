# filepath: /home/valentinbctt/code/ValentinBctt/Doulanouk/app/mailers/rdv_mailer.rb
class RdvMailer < ApplicationMailer
  def new_rdv_email(rdv)
    @rdv = rdv
    mail(
      to: 'vbracchetti@yahoo.fr', # L'adresse où envoyer l'e-mail
      subject: "Nouveau RDV pris par #{@rdv.first_name} #{@rdv.last_name}"
    )
  end
end
