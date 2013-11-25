class Ticket < ActiveRecord::Base
  attr_accessible :name, :problem, :reply

  def self.create_from_inbound_hook(message)
    self.new(:reply => message["TextBody"],
             :name => message["Subject"])
  end

post '/inbound' do
  request.body.rewind
  ticket = Ticket.create_from_inbound_hook(Postmark::Json.decode(request.body.read))
  # logger.info ticket.inspect
end
