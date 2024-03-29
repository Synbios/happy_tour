class MessagesMailer < ApplicationMailer
  default from: "mike@iprogroup.ca"
  COMPANY_EMAIL = "service@happytourcanada.com"

  def airfares_and_hotels_message(message)
    @message = message
    mail(to: COMPANY_EMAIL, subject: "机票咨询")
  end

  def hotels_message(message)
    @message = message
    mail(to: COMPANY_EMAIL, subject: "酒店咨询")
  end

  def customize_message(message)
    @message = message
    mail(to: COMPANY_EMAIL, subject: "定制旅游咨询")
  end

  def contact_message(message)
    @message = message
    mail(to: COMPANY_EMAIL, subject: "意见和反馈")
  end
end
