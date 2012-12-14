require 'fileutils'
require 'digest/md5'
require 'redcarpet'
require 'albino'

PYGMENTS_CACHE_DIR = File.expand_path('../../_cache', __FILE__)
FileUtils.mkdir_p(PYGMENTS_CACHE_DIR)

class Redcarpet2Markdown < Redcarpet::Render::HTML
  def block_code(code, lang)
    lang = lang || "text"
    path = File.join(PYGMENTS_CACHE_DIR, "#{lang}-#{Digest::MD5.hexdigest code}.html")
    cache(path) do
      colorized = Albino.colorize(code, lang.downcase)
      add_code_tags(colorized, lang)
    end
  end

  def add_code_tags(code, lang)
    code.sub(/<pre>/, "<pre><code class=\"#{lang}\">").
         sub(/<\/pre>/, "</code></pre>")
  end

  def cache(path)
    if File.exist?(path)
      File.read(path)
    else
      content = yield
      File.open(path, 'w') {|f| f.print(content) }
      content
    end
  end
end

class Jekyll::MarkdownConverter
  def extensions
    Hash[ *@config['redcarpet']['extensions'].map {|e| [e.to_sym, true] }.flatten ]
  end

  def markdown
    @markdown ||= Redcarpet::Markdown.new(Redcarpet2Markdown.new(extensions), extensions)
  end

  def convert(content)
    return super unless @config['markdown'] == 'redcarpet2'
    markdown.render(content)
  end
end

# A liquid::template tag so I could include my summary.markdown 
# with redcarpet2 (including the options I like), it was _not_
# working as planned, but I'll leave it here for visibilities sake
#
# <div class="about-author">
#   {% capture summary_content %}
#   {% render_partial partials/summary.markdown %}
#   {% endcapture %}
#   {{ summary_content | markdownplease }}
# </div>
# class Markdownplease < Liquid::Tag
#
#   def extensions
#     Hash[ *@config['redcarpet']['extensions'].map {|e| [e.to_sym, true] }.flatten ]
#   end
#
#   def markdown
#     @markdown ||= Redcarpet::Markdown.new(Redcarpet2Markdown.new(extensions), extensions)
#   end
#
#   def initialize(tag_name, text, tokens)
#     super
#     @text = text
#   end
#
#   def render(context)
#     return super unless @config['markdown'] == 'redcarpet2'
#     markdown.render(@text).to_s
#   end
# end
#
# Liquid::Template.register_tag('markdownplease', Markdownplease)