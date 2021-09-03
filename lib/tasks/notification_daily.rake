namespace :notification_daily do
  desc 'Alert mail to task Incomplete Before 1 day'
  task :check => :environment do
    Task.active.each do |task|
      if DateTime.now.strftime("%Y/%m/%d %H") == (task.end_time-1.day).strftime("%Y/%m/%d %H")
        NotificationMailer.before_one_day_notify(task, task.try(:user)).deliver_now
      end
    end
  end
end
