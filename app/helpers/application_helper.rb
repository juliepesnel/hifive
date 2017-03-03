module ApplicationHelper

  def avatar_image_tag user, options = {}
    if user.picture
      cl_image_tag user.picture.path, options
    elsif user.facebook_picture_url
      image_tag user.facebook_picture_url, options
    else
      image_tag "http://placekitten.com.s3.amazonaws.com/homepage-samples/200/286.jpg", options
    end
  end
end
