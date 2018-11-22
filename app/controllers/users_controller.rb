class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def flop
    @user = current_user
    if (@user.days)
      if ((Time.now - @user.updated_at)/3600 > 12)
        @user.progress+=20
        @user.days+=1
        @user.save
      end
    else
      @user.progress=20
      @user.days=1
      @user.save
    end
    redirect_to schedules_path
  end
end
