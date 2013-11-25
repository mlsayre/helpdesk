class Ticket < ActiveRecord::Base
  attr_accessible :name, :problem, :reply

  def self.update_from_inbound_hook(message)
    ticket = Ticket.find(:id => message["Subject"])

    ticket.update_attributes(:reply => message["TextBody"])                           )
  end
end

