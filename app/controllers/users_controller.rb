class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :city)
  end
end

# before_action :status_check

#     def index
#    @user = User.all.select(:id, :name, :age, :city)
#    render json:@user.as_json
#     end

#     def status_check
#    if(params[:status]== "false")
#        return render json: "Unauthenticated user"
#    end
#     end

#     def show
#    @user = User.find_by_id(params[:id])
#    if(@user == nil)
#        return render json: "Not found"
#    end
#    return render json:@user.as_json
#     end

#     def posts_handler
#    render json: "Posts handler called"
#     end
