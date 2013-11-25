class Ticket < ActiveRecord::Base
  attr_accessible :name, :problem, :reply

  def self.create_from_inbound_hook(message)
    ticket = Ticket.find(message["Subject"])

    ticket.update_attributes(:reply => message["TextBody"])                           )
  end
end

