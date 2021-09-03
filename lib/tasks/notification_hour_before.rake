namespace :notification_hour_before do
  desc 'Notification for task deadline before 1 hour'
  task :check => :environment do
    Task.active.each do |task|
      if DateTime.now.strftime("%Y/%m/%d %H:%M") == (task.end_time-1.hour).strftime("%Y/%m/%d %H:%M")
        NotificationMailer.before_hour_notify(task, task.try(:user)).deliver_now
      end
    end
  end
end
