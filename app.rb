require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get "/say/:number/:phrase" do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2"
    operation = params[:operation].to_s

    if operation == "add"
      result = params[:number1].to_i + params[:number2].to_i
    elsif operation == "multiply"
      "#{params[:number1]} * #{params[:number2]}"
    elsif operation == "subtract"
      "#{params[:number1]} - #{params[:number2]}"
    elsif operation == "divide"
      "#{params[:number1]} / #{params[:number2]}"
    end
    result.to_s
  end

end
