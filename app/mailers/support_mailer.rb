class SupportMailer < ActionMailer::Base
  default from: "matt@thegamecomposer.com"

  def ticket_notify
    @ticket = Ticket.find(params[:id])

    mail to: "matt@thegamecomposer.com", subject: @ticket.name
  end
end
