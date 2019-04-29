require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'https://happytourcanada.com'
SitemapGenerator::Sitemap.create do
  add '/home', :changefreq => 'daily', :priority => 0.9
  add '/contact_us', :changefreq => 'weekly'

  add '/contact', :changefreq => 'weekly', :priority => 0.9
  add '/about', :changefreq => 'weekly', :priority => 0.9
  add '/customize', :changefreq => 'weekly', :priority => 0.9
  add '/airfares_and_hotels', :changefreq => 'weekly', :priority => 0.9

  add '/article1', :changefreq => 'weekly', :priority => 0.5
  add '/article2', :changefreq => 'weekly', :priority => 0.5
  add '/article3', :changefreq => 'weekly', :priority => 0.5
  add '/article4', :changefreq => 'weekly', :priority => 0.5
  add '/article5', :changefreq => 'weekly', :priority => 0.5
  add '/article6', :changefreq => 'weekly', :priority => 0.5

  Product.find_each do |product|
    add product_path(product), :lastmod => product.updated_at
  end

end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks
