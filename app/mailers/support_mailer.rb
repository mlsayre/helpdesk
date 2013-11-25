class SupportMailer < ActionMailer::Base
  default from: "matt@thegamecomposer.com"

  def ticket_notify(ticket)
    @ticket = ticket

    mail to: "matt@thegamecomposer.com", subject: "#{ticket.name}"
  end

  def receive(email)
    ticket = Ticket.find_by_email(email.subject)
    ticket.emails.create(
      :reply => email.body
      )
  end
end
