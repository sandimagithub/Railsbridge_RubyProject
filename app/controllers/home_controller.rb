class HomeController < AuthenticatedController
  def index
    if user_signed_in? 
     
      # @message = "Welcome to my website! #{email}"
        @message = "Welcome to my website!" 
        @email = current_user.email
    else 
      @message = "Not logged in - get out!"
    end 

  end

end
