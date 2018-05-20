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
      haml_tag(:ul, class: "categories") do
        haml_tag(:li) do
          article.tags.each do |tag|
            haml_tag(:a, tag, class: "categoryTag", href: tag_path(tag))
          end
        end
      end
    end
  end

  def generate_fb_tags
    capture_haml do
      haml_tag(:meta, property: 'fb:app_id', content: '607612659310178')
      haml_tag(:meta, property: 'og:type', content: fb_metatag_type)
      haml_tag(:meta, property: 'og:title', content: fb_metatag_title)
      haml_tag(:meta, property: 'og:description', content: fb_metatag_description)
      haml_tag(:meta, property: 'og:url', content: fb_metatag_url)
      haml_tag(:meta, property: 'og:image', content: fb_metatag_image)
      haml_tag(:meta, property: 'og:image:url', content: fb_metatag_image)
      haml_tag(:meta, property: 'og:image:type', content: fb_metatag_image_type)
      haml_tag(:meta, property: 'og:image:width', content: fb_metatag_image_width)
      haml_tag(:meta, property: 'og:image:height', content: fb_metatag_image_height)
      haml_tag(:meta, property: 'og:site_name', content: "Frankyston Lins")
    end
  end

  def fb_metatag_type
    current_page.data.fb.present? ? "article" : "website"
  end

  def fb_metatag_title
    current_page.data.fb.present? ? current_page.data.fb.title : "Frankyston Lins"
  end

  def fb_metatag_url
    "#{current_site_url}/#{current_page.path}"
  end

  def fb_metatag_image
    current_page.data.fb.present? ? "#{current_site_url}#{current_page.data.fb.image.url}" : "#{current_site_url}/images/foto.png"
  end

  def fb_metatag_image_type
    current_page.data.fb.present? ? current_page.data.fb.image.type : "image/png"
  end
  
  def fb_metatag_image_width
    current_page.data.fb.present? ? current_page.data.fb.image.width : 300
  end
  
  def fb_metatag_image_height
    current_page.data.fb.present? ? current_page.data.fb.image.height : 400
  end

  def fb_metatag_description
    current_page.data.fb.present? ? current_page.data.fb.description : "Coisas sobre Ruby on Rails e desenvolvimento Web"
  end

  def current_site_url
    "http://frankyston.tech"
  end
end
