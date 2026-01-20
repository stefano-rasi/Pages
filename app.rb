require 'sinatra'
require 'asciidoctor'

get '/pages/*' do
    path = "pages/#{params[:splat][0]}"

    text = File.read(path)

    @html = Asciidoctor.convert(text)

    slim :pages
end