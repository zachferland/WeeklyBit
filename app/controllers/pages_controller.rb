class PagesController < ApplicationController
  def index
    @member_count = @mc.lists.list({'list_id' => '5179b9cf9c'})['data'][0]['stats']['member_count'] + 83
     # = lists_res['data'][15].member_count
  end

  def subscribe
  	email = params['email']
    begin
      @mc.lists.subscribe('5179b9cf9c', {'email' => email})
      flash[:success] = "Thanks, #{email} subscribed successfully! Emails will be delivered every Wednesday, enjoy!"
    rescue Mailchimp::ListAlreadySubscribedError
      flash[:error] = "#{email} is already subscribed to the list."
    rescue Mailchimp::ListDoesNotExistError
      flash[:error] = "The list could not be found."
      redirect_to root_path
      return
    rescue Mailchimp::Error => ex
      if ex.message
        flash[:error] = ex.message
      else
        flash[:error] = "An unknown error occurred"
      end
    end
    redirect_to root_path
  end

end
