class DeleteUserMailer < ApplicationMailer
  def delete_user_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Sorry to see you go!')
  end
end
