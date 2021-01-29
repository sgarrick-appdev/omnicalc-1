class ApplicationController < ActionController::Base

def blank_square_form
  render(:template => "calculation_template/square_form.html.erb")
end


end
