class ApplicationController < ActionController::Base

def blank_square_form
  render({ :template => "calculation_template/square_form.html.erb" })
end

def calculate_square
  @num = params.fetch("shark").to_f
  @square = @num * @num
  render({:template => "calculation_template/square_results.html.erb" })
end

def blank_sqroot_form
  render({ :template => "calculation_template/sqroot_form.html.erb" })
end

def calculate_sqroot

  @num = params.fetch("sqroot_input").to_f
  @sqroot = @num ** (0.5)
  render({:template => "calculation_template/sqroot_results.html.erb" })

end

def blank_random_form
  render({:template => "calculation_template/random_form.html.erb"})
end

def calculate_random

@lower = params.fetch("user_min").to_f
@upper = params.fetch("user_max").to_f
@result = rand(@lower..@upper)

render({:template => "calculation_template/rand_results.html.erb" })

end

def blank_payment_form
  render({:template => "calculation_template/payment_form.html.erb"})
end

def calculate_payment
  @APR = params.fetch("APR").to_f
  @n = params.fetch("n").to_i
  @principal = params.fetch("principal").to_f.round(2)
  @payment = ((@APR/100)/365)*@n*12*@principal
  render({:template => "calculation_template/payment_results.html.erb"})
end

end
