class EventsController < ApplicationController

before_action :set_event, only: [:show, :edit, :update, :destroy]


 def index
   @events = current_user.events
 end

 def new
   @event = Event.new
   @participation = @event.participations.build
 end

 def create
   @event = Event.new(event_params)
   @event.user = current_user
   if @event.save
     params[:event][:participations][:user_ids].each do |user_id|
       user = User.find(user_id) unless user_id.blank?
       @participation = @event.participations.create(user: user)
     end
     redirect_to event_path(@event),  notice: "Event created! Here is your recap :)"
   else
     render :new , alert: "Ooooops, something missing! Please try again"
   end
 end

 def show
    # @event = Event.find(params[:id]).includes(:user, participations: {:user})
    @creator = @event.user
    @happening = @event.happen_at
    @ultimatum = @event.due_at
    @choosen_place = @event.restaurant
    @guests = @event.participations

 end

 def edit

 end

 def update
   if @event.update(event_params)
     redirect_to event_path,  notice: "Event updated"
   else
     render :edit, alert: "event not updated"
   end
 end

 def destroy
   @event.canceled_at = Time.now
   redirect_to :index, notice: "Event cancelled"
 end

private

 def set_event
   @event = Event.find(params[:id])
 end

 def event_params
   params.require(:event).permit(:happen_at, :canceled_at, :due_at, :restaurant_id)
 end
end
