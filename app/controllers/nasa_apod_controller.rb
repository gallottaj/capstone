class NasaApodController < ApplicationController
  
  def show
    @apod = Unirest.get "https://api.nasa.gov/planetary/apod?api_key=#{ENV['API_KEY']}"
    render "show.json.jbuilder"
  end
end
