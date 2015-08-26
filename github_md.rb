#!/usr/bin/ruby
require 'github/markdown'

md = ARGF.read

# processing ``` blocks
md.gsub! /(?<beg>[`]{3})(?:\n\#\!)?(?<lang>\w+)(?<code>((?!^[`]{3})[\s\S])*)(?<ending>[`]{3})/im do
    beg, lang, body, ending = $~.captures

    # pass body to source-highlight
    IO.popen('source-highlight -s' + lang + ' --tab=4', 'r+') do | pipe |
        pipe.puts(body.strip)
        pipe.close_write
        new_body = pipe.read()

        if new_body.empty?
            body = '<pre>' + body + '</pre>'
        else
            body = new_body
        end
    end
    
    # unwrap <tt> tag
    body.gsub! /\<tt\>(?!\<\/tt\>)*/, "\1"

    body
end

# convert to html with GitHub markdown
puts GitHub::Markdown.render(md)