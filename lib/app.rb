require './lib/cipher.rb'

class Cipher < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        erb :index
    end

    post '/' do
        text = params["text"]
        number = params["number"].to_i
        result = cipher(text, number)
        erb :final, locals: {word: text, number: number, result: result}
    end
    
end