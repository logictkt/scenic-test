class NotificationSettingsController < ApplicationController
  before_action :set_user

  def update
    if @user.notification_setting.present?
      @user.notification_setting.update(enabled: !@user.notification_setting.enabled)
    else
      @user.create_notification_setting(enabled: false)
    end
    redirect_to @user, notice: 'change notice setting'
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
