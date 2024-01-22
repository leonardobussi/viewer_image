class HomeController < ApplicationController
  require 'open-uri'
  def index
    img_url = 'https://picsum.photos/id/237/200/300'
    image = URI.open(img_url)
    send_data image.read, type: 'image/png', disposition: 'inline'
  end
end
