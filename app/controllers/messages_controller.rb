class MessagesController < MasterController

  def create
    respond_to do |format|
      format.json {
        if params[:type] == "airfares_and_hotels"
          message = {}
          message[:name] = params[:name]
          message[:gender] = params[:gender]
          message[:dob] = params[:dob]
          message[:departure_date] = params[:departure_date]
          message[:return_date] = params[:return_date]
          message[:from] = params[:from]
          message[:to] = params[:to]
          message[:seat] = params[:seat]
          message[:comments] = params[:comments]
          MessagesMailer.airfares_and_hotels_message(message).deliver_now
        elsif params[:type] == "customize"
          message = {}
          message[:start_date] = params[:start_date]
          message[:end_date] = params[:end_date]
          message[:number_of_people] = params[:number_of_people]
          message[:hotel] = params[:hotel]
          message[:destination] = params[:destination]
          message[:activities] = params[:activities]
          message[:bus] = params[:bus]
          message[:comments] = params[:comments]

          message[:contact_name] = params[:contact_name]
          message[:contact_phone] = params[:contact_phone]
          message[:contact_email] = params[:contact_email]
          message[:contact_wechat] = params[:contact_wechat]
          message[:preferred_contact] = params[:preferred_contact]

          MessagesMailer.customize_message(message).deliver_now
        elsif params[:type] == "contact"
          message = {}
          message[:name] = params[:name]
          message[:email] = params[:email]
          message[:phone] = params[:phone]
          message[:content] = params[:content]

          MessagesMailer.contact_message(message).deliver_now
        end
        render json: {state: :ok}
      }
    end
  end
end
