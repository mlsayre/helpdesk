class SupportMailer < ActionMailer::Base
  default from: "matt@thegamecomposer.com"

  def ticket_notify
    mail to: "matt@thegamecomposer.com", subject: @ticket.name
  end
end
