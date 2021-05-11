class Front::VfRankController < ApplicationController
  def index
    @tbl_players = TblPlayer.order(volforce_rank: :asc).page(params[:page]).per(50)
    @window_size = browser.device.mobile? ? 2 : 5
  end
end
