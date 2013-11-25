class Ticket < ActiveRecord::Base
  attr_accessible :name, :problem, :reply

  def self.create_from_inbound_hook(message)

    self.update(message["Subject"], :reply => message["TextBody"])
  end
end

