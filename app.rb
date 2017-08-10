require 'sinatra/base'

class App < Sinatra::Base

    get "/"  do
      
      erb :'static/index'

    end

end