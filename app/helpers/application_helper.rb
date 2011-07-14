module ApplicationHelper
  def excluded_page
    controller.class == HomeController
  end
end
