module DeviseHelper
  def devise_error_messages!
    messages = resource.errors.details.keys.map { |attr|
      content_tag(:li, resource.errors.full_messages_for(attr).first)
    }.join("<br>").html_safe
  end
end
