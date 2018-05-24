class TimecardsController < ApplicationController
  include Utility
  
  def show
    empid = session[:emp_id]
    @user = User.find_by(emp_id: empid)
    @tc = Timecard.find_by(emp_id: empid)
    @shinseiKbn = Generic.where(kbn: "K01")
    @jokyoKbn = Generic.where(kbn: "K02")
    @targets = get_trgmonth_list(empid)
    
  end

  def index
  end
  
  def update
    @tc=Timecard.find(params[:timecard][:id])
    if @tc.update(update_tc_params)
      redirect_to timecards_path
    else
      render plain: "error" #show
    end
    
  end
  
  private

    def tc_params
      params.require(:timecard).permit(:shinsei_kbn)
    end
    
    def update_tc_params
      params.require(:timecard).permit(:shinsei_kbn, timecard_detail_attributes: [:kinmu_jokyo, :start_time, :end_time, :id])
    end
    
    def get_trgmonth_list(emp_id)
      ary = []
      Timecard.where(emp_id: emp_id).each do |t|
        ary.push t.target_month
      end
      
      return ary
    end
    
    
end
