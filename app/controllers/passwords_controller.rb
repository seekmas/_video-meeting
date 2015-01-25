class PasswordsController < ApplicationController
  before_action :set_password, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @passwords = Password.all
    respond_with(@passwords)
  end

  def show
    respond_with(@password)
  end

  def new
    @password = Password.new
    respond_with(@password)
  end

  def edit
  end

  def create
    @password = Password.new(password_params)
    @password.save
    respond_with(@password)
  end

  def update
    @password.update(password_params)
    respond_with(@password)
  end

  def destroy
    @password.destroy
    respond_with(@password)
  end

  private
    def set_password
      @password = Password.find(params[:id])
    end

    def password_params
      params.require(:password).permit(:room_id, :user_id, :password)
    end
end
