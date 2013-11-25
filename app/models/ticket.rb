class Ticket < ActiveRecord::Base
  attr_accessible :name, :problem, :reply

  def self.create_from_inbound_hook(message)
    ticket = Ticket.find(:id)

    ticket.update_attributes(:id => message["Subject"], :reply => message["TextBody"])                           )
  end
end

