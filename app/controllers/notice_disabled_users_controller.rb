class NoticeDisabledUsersController < ApplicationController
  def index
    @users = NoticeDisabledUser.all
  end
end
