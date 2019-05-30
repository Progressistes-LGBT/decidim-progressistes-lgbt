module ApplicationHelper
  # include Decidim::Plans::LinksHelper

  # Defines whether the "common" content elements are displayed. In the
  # 'private' application mode these should be hidden in case the user is not
  # signed in.
  def display_common_elements?
    if is_private_mode?
      return user_signed_in?
    end
    true
  end

  def is_private_mode?
    Rails.application.config.use_mode == 'private'
  end

  def feedback_email
    Rails.application.config.feedback_email
  end

  def meta_image_default
    return "test-social.jpg"
  end

end
