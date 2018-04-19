module ApplicationHelper
  def page_heading(text)
    content_tag :h1, text, class: 'page-heading'
  end
end
