class UserController < ApplicationController
    def new 
    end

    def login
    end

    def login_handle 
        user = User.find_by email: params[:user][:email].downcase
        if user && user.authenticate(params[:user][:password])
          session[:email] = user.email
          flash[:success] = "Đăng nhập thành công!"
          redirect_to :root
        else
          flash[:danger] = "Email hoặc mật khẩu không đúng!"
          render :login
        end
    end

    def create 
        @user = User.new user_params
        if @user.save 
            flash[:success] = "Đăng ký thành công!"
            redirect_to login_path
        else
            flash[:warning] = "Đăng ký thất bại!"
            render :new    
        end
    end

    private
    def user_params
        params.require(:user).permit :firstName, :lastName, :email, :password, :password_confirmation
    end
end
