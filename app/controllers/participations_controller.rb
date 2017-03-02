class ParticipationsController < ApplicationController

  def update
    #event_id
    #user_id / current_user

    #requete participation.where(current_user.id, event.id)
    #requete
    #participation.

  end

  private

  def participation_params
    params.require(:participation).permit(:status)
  end
end
