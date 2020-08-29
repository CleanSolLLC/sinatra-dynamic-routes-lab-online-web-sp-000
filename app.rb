require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    
    <%= params[:name].reverse %>
  end
  
  get '/square/:number' do
    
    <%= params[:number].to_i ** 2 %>
  end
    
  get 'say/:number/:phrase' do
    
    erb :say
  end
  
  get '/:operation/:number1/:number2' do
  
    erb :operation
  end

end