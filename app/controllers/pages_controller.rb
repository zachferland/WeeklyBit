class PagesController < ApplicationController
  def index
  end

  def subscribe
  	email = params['email']
    begin
      @mc.lists.subscribe('5179b9cf9c', {'email' => email})
      flash[:success] = "#{email} subscribed successfully"
    rescue Mailchimp::ListAlreadySubscribedError
      flash[:error] = "#{email} is already subscribed to the list"
    rescue Mailchimp::ListDoesNotExistError
      flash[:error] = "The list could not be found"
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
