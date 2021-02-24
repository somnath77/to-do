class UsersController < ApplicationController

    before_action :status_check

    def index
        @user = User.all.select(:id, :name, :age, :city)
        render json:@user.as_json
    end

    def status_check
        if(params[:status]== "false")
            return render json: "Unauthenticated user"
        end
    end

    def show
        @user = User.find_by_id(params[:id])
        if(@user == nil)
            return render json: "Not found"
        end
        return render json:@user.as_json
    end

    def posts_handler
        render json: "Posts handler called" 
    end
end
