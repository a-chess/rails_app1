class StaticPagesController < ApplicationController
  def home
    @user = User.find_by(emp_id: session[:emp_id])
  end
  
  def about
    # render plain: "test"
  end
end
