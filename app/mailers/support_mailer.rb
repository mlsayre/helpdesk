class SupportMailer < ActionMailer::Base
  default from: "matt@thegamecomposer.com",
          reply_to: "1245d518b80877f70ee8d3f6c4374385@inbound.postmarkapp.com"

  def ticket_notify(ticket)
    @ticket = ticket

    mail to: "matt@thegamecomposer.com",
         subject: "#{ticket.id}",
         text_body: "#{ticket.problem}"
  end

  def receive(email)
    ticket = Ticket.new
    ticket.create(
      :reply => email.body
      )
  end
end
