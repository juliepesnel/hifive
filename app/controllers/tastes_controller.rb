class TastesController < ApplicationController

  def new
    @taste = Taste.new
    @category = Category.all.sample
    render layout: false
  end

  def create
    @taste = Taste.new(taste_params)
    @taste.user = current_user
    @taste.level = params[:commit] == "Yes" ? 1 : 0
    @taste.save
    redirect_to root_path
  end


private

  def taste_params
   params.require(:taste).permit(:category_id)
  end

end
