class InboundController < ApplicationController

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.create_from_inbound_hook(Postmark::Json.decode(request.body.read))

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render json: @ticket, status: :created, location: @ticket }
      else
        format.html { render action: "new" }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end
end
