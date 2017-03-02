module ApplicationHelper

  def avatar_image_tag user, options = {}
    if current_user.picture
      cl_image_tag current_user.picture.path, options
    elsif current_user.facebook_picture_url
      image_tag current_user.facebook_picture_url, options
    else
      image_tag "http://placekitten.com.s3.amazonaws.com/homepage-samples/200/286.jpg", options
    end
  end
end
