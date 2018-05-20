module TwitterTagsHelpers
  def generate_tw_tags
    capture_haml do
      haml_tag(:meta, property: 'twitter:card', content: 'summary_large_image')
      haml_tag(:meta, property: 'twitter:site', content: '@frankyston')
      haml_tag(:meta, property: 'twitter:title', content: fb_metatag_title)
      haml_tag(:meta, property: 'twitter:description', content: fb_metatag_description)
      haml_tag(:meta, property: 'twitter:creator', content: '@frankyston')
      haml_tag(:meta, property: 'twitter:image:src', content: fb_metatag_image)
      haml_tag(:meta, property: 'twitter:domain', content: current_site_url)
    end
  end
end