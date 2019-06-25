class ActiveUsersController < ApplicationController
  def index
    @users = ActiveUser.all
  end
end
