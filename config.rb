
###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Pretty URLs - https://middlemanapp.com/advanced/pretty_urls/
activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = 'articles/{year}-{month}-{day}-{title}.html'
  blog.taglink = 'tag/{tag}.html'
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = 'tag.html'
  # blog.calendar_template = "calendar.html"

  # Enable pagination
  #blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = 'master'
  deploy.build_before = true
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-45299862-8'
end

activate :disqus do |d|
  d.shortname = 'frankyston'
end

# Middleman-Syntax - https://github.com/middleman/middleman-syntax
set :haml, { ugly: true }
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true, footnotes: true,
  link_attributes: { rel: 'nofollow' }, tables: true
activate :syntax, line_numbers: false

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
