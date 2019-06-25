class DeletedUsersController < ApplicationController
  def index
    @users = DeletedUser.all
  end
end
