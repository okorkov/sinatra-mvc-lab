require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    @params = params
    # @params.to_s
    @pig = PigLatinizer.new
    @pig.piglatinize(@params["user_phrase"])
    # erb :output
  end

end