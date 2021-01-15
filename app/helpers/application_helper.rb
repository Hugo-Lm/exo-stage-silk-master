module ApplicationHelper
  def style_color(name)
    if name.title[0].downcase == "s"
      return "text-warning "
    elsif name.title.length % 2 == 0
      return "text-danger"
    elsif name.title.length % 2 != 0
      return "text-primary"
    end
  end
end
