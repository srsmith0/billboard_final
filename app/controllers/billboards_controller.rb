class BillboardsController < ApplicationController
  def index
  end

  def home
  end
  
  def show
    set_billboard
    @rankings = @billboard.rankings.sort_by { |r| [r.rank] }
  end

  private
  def set_billboard
    @billboard = Billboard.find(params[:id])
  end
end
