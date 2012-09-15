class SMSNotifier < ActionMailer::Base
  def send_sms(recipient, message, sender_email, options = {})
    mail(:to => recipient, :from => sender_email, :subject => options[:subject]) do |format|
      format.text { render :text => message }
      format.html { render :text => message }
    end
  end  
end
