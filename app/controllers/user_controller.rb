class UserController < ApplicationController
  def index
    @users_all = User.all
  end
  def photo
    @user_id=params[:user_id]
    @user_firstname=params[:user_firstname]
    @user_lastname=params[:user_lastname]
    @photos = Photo.where("user_id= ?",@user_id )
  end
  def comment
    @photo_id=params[:photo_id]
    @user_firstname=params[:user_firstname]
    @user_lastname=params[:user_lastname]
    @comments = Comment.includes(:user).where(" photo_id= ?",@photo_id )
  end
end
