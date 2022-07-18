class StaticPagesController < ApplicationController
  def home
    flickr = Flickr.new # reads arguments from env variable
    @photos = flickr.photos.search(user_id: '196089601@N03')

    # Return a list of photos matching some criteria. Only photos visible to the calling user will be returned.
    # To return private or semi-private photos, the caller must be authenticated with 'read' permissions,
    # and have permission to view the photos. Unauthenticated calls will only return public photos.

    # 2 step to display photos 1- get meta info, 2- construct img url using info (see kittens api in top)

    # extract id,server,secret from each elm inside response to build the image url and display it using img tag

    # 189686700@N08
    # 196089601@N03
  end
end