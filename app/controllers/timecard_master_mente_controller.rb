class TimecardMasterMenteController < ApplicationController
  def index
    @tc_month_list = TimeCardIndex.all
  end
end
