class Ticket < ActiveRecord::Base
  attr_accessible :name, :problem, :reply

  def self.create_from_postmark(mitt)
    api_token = mitt.to.split("@").first.split("+").last

      ticket = ticket.new
      ticket.name = mitt.subject
      ticket.reply = if mitt.text_body.blank?
        mitt.html_body
      else
        mitt.text_body
      end
      # post.photo = mitt.attachments.first.read unless mitt.attachments.empty?
      ticket.save
  end
end
