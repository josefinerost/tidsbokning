class UsersController < Clearance::UsersController

  def create
    @user = User.new(all_user_params)

    if @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      render template: "users/new"
    end
  end

  private

  def all_user_params
    params.require(:user).permit(:email, :password, :name)
  end
end
