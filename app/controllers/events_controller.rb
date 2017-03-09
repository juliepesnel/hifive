class EventsController < ApplicationController

before_action :set_event, only: [:show, :edit, :update, :destroy, :sendsms]


 def index
  @events = current_user.events.where(canceled_at: nil)
  @cancelled_events = current_user.events.where.not(canceled_at: nil)
  @participations = current_user.participations
  raise
end

 def new
   @event = Event.new
   @participation = @event.participations.build
 end

 def create
   @event = Event.new(event_params)
   @event.user = current_user
   user_ids = params[:event][:participations][:user_ids].reject(&:blank?)
   @event.participations << user_ids.map { |user_id| Participation.new(user_id: user_id) }
   if @event.save
     redirect_to event_path(@event),  notice: "Event created! Here is your recap :)"
   else
     render :new , alert: "Ooooops, something missing! Please try again"
   end
 end

 def show
  # @event = Event.find(params[:id]).includes(:user, participations: {:user})
  @creator = @event.user.first_name
  @happening = @event.happen_at
  @ultimatum = @event.due_at
  @choosen_place = @event.restaurant
  @guests = @event.participations
  @participation = @event.participations.find_by(user: current_user)
end

 def edit
  @event.canceled_at = DateTime.now
  @event.save
  redirect_to event_path(@event), notice: "Event cancelled"
end

 def update
   if @event.update(event_params)
     redirect_to event_path,  notice: "Your Event is updated"
   else
     render :edit, alert: "event not updated"
   end
 end

 def destroy
   @event.canceled_at = Time.now
   redirect_to :index, notice: "Event cancelled"
 end

 def sendsms
    @client = Twilio::REST::Client.new
    @client.messages.create(
      from: '+33644643582',
      to: '+33685455194',
      body: "Hello, your friend Anteo send you an invitation ! Confirm your participation on http://hifive.fr"
    )
    redirect_to event_path(@event), notice: "SMS sended !"
  end

private

 def set_event
   @event = Event.find(params[:id])
 end

 def event_params
   params.require(:event).permit(:happen_at, :canceled_at, :due_at, :restaurant_id, :name)
 end
end
