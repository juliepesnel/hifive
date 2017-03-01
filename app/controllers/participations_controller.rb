class ParticipationsController < ApplicationController

  def update

  end

  private

  def participation_params
    params.require(:participation).permit(:status)
  end
end
