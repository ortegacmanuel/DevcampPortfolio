module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path) +
      (link_to "Login", new_user_session_path)
    else
      (link_to "Edit", edit_user_registration_path) +
      (link_to "Logout", destroy_user_session_path, method: :delete)
     end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me on #{layout_name} from #{session[:source]}"
      content_tag(:p, greeting, class: 'source-greeting')
    end
  end

  def copyright_generator
    OrtegacmanuelViewTool::Renderer.copyright 'Manuel Ortega', 'Free Software'
  end
end
