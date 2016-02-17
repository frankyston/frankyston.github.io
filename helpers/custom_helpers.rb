module CustomHelpers
  def summary(article)
    strip_tags(article.summary(50, ''))
  end

  def page_title
    title = "Frankyston Lins"
    if current_page.data.title
      title << ": #{current_page.data.title}"
    elsif is_blog_article?
      title << ": #{current_article.title}"
    end
    title
  end

  def page_description
    if is_blog_article?
      body = strip_tags(current_article.body).gsub(/\s+/, ' ')
      truncate(body, length: 147)
    else
      "Coisas sobre Ruby on Rails e desenvolvimento Web"
    end
  end

  def tags(article = current_article, separator = ', ')
    capture_haml do
      article.tags.each do |tag|
        haml_tag(:a, tag, href: tag_path(tag))
        haml_concat(separator) unless article.tags.last == tag
      end
    end.gsub("\n", '')
  end
end
