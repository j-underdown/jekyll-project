module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      site.tags.each_key do |tag|
        site.pages << TagPage.new(site, site.source, File.join('tags', tag.downcase), tag, site.tags[tag])
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, dir, tag, posts)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_page.html')
      self.data['tag'] = tag
      self.data['title'] = "Tag: #{tag}"
      self.data['posts'] = posts
    end
  end
end
