class Ticket < ActiveRecord::Base
  attr_accessible :name, :problem, :reply

  def self.create_from_inbound_hook(message)
    self.new(:reply => message["TextBody"],
             :name => message["Subject"])
  end
end



