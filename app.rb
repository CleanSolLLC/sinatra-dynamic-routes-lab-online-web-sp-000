require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    
    params[:name].reverse
  end
  
  get '/square/:number' do
    
     "#{params[:number].to_i * params[:number].to_i}"
  end
    
  get '/say/:number/:phrase' do
    
     "#{params[:phrase]}" * params[:number].to_i
  end
  
  get '/:operation/:number1/:number2' do
    
    binding.pry
  
    params[:number1].to_i #{params[:operation]} #{params[:number2].to_i}"
  end

end