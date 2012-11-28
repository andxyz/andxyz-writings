
http://sublimetext.info/docs/en/reference/build_systems.html


  http://github.github.com/github-flavored-markdown/
  require 'digest/md5'

  def gfm(text)
    # Extract pre blocks
    extractions = {}
    text.gsub!(%r{<pre>.*?</pre>}m) do |match|
      md5 = Digest::MD5.hexdigest(match)
      extractions[md5] = match
      "{gfm-extraction-#{md5}}"
    end

    # prevent foo_bar_baz from ending up with an italic word in the middle
    text.gsub!(/(^(?! {4}|\t)\w+_\w+_\w[\w_]*)/) do |x|
      x.gsub('_', '\_') if x.split('').sort.to_s[0..1] == '__'
    end

    # in very clear cases, let newlines become <br /> tags
    text.gsub!(/^[\w\<][^\n]*\n+/) do |x|
      x =~ /\n{2}/ ? x : (x.strip!; x << "  \n")
    end

    # Insert pre block extractions
    text.gsub!(/\{gfm-extraction-([0-9a-f]{32})\}/) do
      "\n\n" + extractions[$1]
    end

    text
  end



  http://www.decalage.info/python/ruby_bridge

  pandoc to html (or dzslide)
  https://gist.github.com/954436


  Using the build provider
  Install Pandoc on your system. I'm assuming that you have the pandoc.exe on your PATH on Windows.
  Save the Markdown.sublime-build file to your Packages folder. On my Windows 7 system this is:
  C:\Users\USERNAME\AppData\Roaming\Sublime Text 2\Packages\Markdown

  Open a Mardown file (with *.md file extension) and hit F7.
  Markdown.sublime-build # embed raw

  {
  	"cmd": ["pandoc.exe", "--to=html", "--output=$file.html", "$file"],
  	"selector": "source.md"
  }


  add (windows):
  "cmd":["C:\Users\Username\AppData\Local\Google\Chrome\Application\chrome.exe","$file.html"],
  or (Mac)
  "cmd": ["open", "-a", "Google Chrome", "$file.html"]
  to have it launch the file in the browser