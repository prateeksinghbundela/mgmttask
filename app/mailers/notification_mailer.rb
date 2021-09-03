class NotificationMailer < ApplicationMailer
	def before_hour_notify(task,user)
		@task = task
		@user = user
    mail(to: @user.email, subject: 'Notification Task Deadline before 1 hour')
	end

	def before_one_day_notify(task,user)
		@task = task
		@user = user
    mail(to: @user.email, subject: 'Notification Task Deadline before 1 day')
	end
end
