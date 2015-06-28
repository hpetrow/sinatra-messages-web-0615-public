class MessagesApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  post '/' do
    Message.create { |m|
      m.to = params[:to]
      m.from = params[:from]
      m.content = params[:content]
    }
  end

  get '/' do
    @messages = Message.all
    @body_class = "messages"

    erb :messages
  end

end