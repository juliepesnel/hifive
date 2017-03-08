class TastesController < ApplicationController

  def new
    @taste = Taste.new
    @category = Category.all.sample
    render layout: false
  end

  def create
    @taste = Taste.new(taste_params)
    @taste.user = current_user
    @taste.save
  end


private

  def taste_params
   params.require(:taste).permit(:level, :category_id)
  end

end
