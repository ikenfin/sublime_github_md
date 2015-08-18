#!/usr/bin/ruby
require 'github/markdown'

md = ARGF.read

# processing ``` blocks
md.gsub! /(?<beg>[`]{3}(?<lang>\w+))(?<code>((?!^[`]{3})[\s\S])*)(?<ending>[`]{3})/im do
    beg, lang, body, ending = $~.captures

    # removing trailing newlines
    body.strip!

    # pass body to source-highlight
    IO.popen('source-highlight -s' + lang + ' --tab=4', 'r+') do | pipe |
        pipe.puts(body)
        pipe.close_write
        body = pipe.read()
    end

    # unwrap <tt> tag
    body.gsub! /\<tt\>(?!\<\/tt\>)*/, "\1"

    body
end

# convert to html with GitHub markdown
puts GitHub::Markdown.render(md)