class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

def sendsms
  @client = Twilio::REST::Client.new
  @client.messages.create(
    from: '+33644643582',
    to: '+33685455194',
    body: "Hello, your friend Anteo send you an invitation ! Confirm your participation on http://hifive.fr"
  )
  redirect_to event_path(@event), notice: "SMS sended !"
  end
end
