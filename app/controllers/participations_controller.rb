class ParticipationsController < ApplicationController


  def create
    @participation = Participation.new(participation_params)

    @participation.event = Event.find(params[:id])
    @participation.user = User.find(params[:id])
    @participation.save
  end

  def update
    @
  end

  private

  def participation_params
    params.require(:participation).permit(:status)
  end
end
