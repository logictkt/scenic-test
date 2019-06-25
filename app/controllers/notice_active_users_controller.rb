class NoticeActiveUsersController < ApplicationController
  def index
    @users = NoticeActiveUser.all
  end
end
