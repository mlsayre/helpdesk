class SupportMailer < ActionMailer::Base
  default from: "matt@thegamecomposer.com"

  def ticket_notify(ticket)
    @ticket = ticket

    mail to: "matt@thegamecomposer.com", subject: "#{ticket.name}"
  end
end
