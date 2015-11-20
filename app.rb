require 'sinatra'
require 'httparty'

get '/image' do
  # "Hello #{params[:ra]} #{params[:de]}"
  # "https://archive.stsci.edu/siap/search.php?POS=#{params[:ra]},#{params[:de]}&SIZE=0.05&FORMAT=gif"
  response = HTTParty.get("https://archive.stsci.edu/siap/search.php?POS=#{params[:ra]},#{params[:de]}&SIZE=0.05&FORMAT=gif")
  redirect to(response["VOTABLE"]["RESOURCE"]["TABLE"]["DATA"]["TABLEDATA"]["TR"][0]["TD"][4])
end