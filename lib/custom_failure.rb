class CustomFailure < Devise::FailureApp
  def respond
    if !request.env['REQUEST_PATH'] == '/'
      redirect
    else
      http_auth
    end  
  end
end