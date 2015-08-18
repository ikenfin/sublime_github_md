# github_md.rb

Ruby script to provide bridge to [github-markdown gem](https://rubygems.org/gems/github-markdown) for [Sublime Text 3 - Markmon](https://github.com/yyjhao/sublime-text-markmon) plugin.

**Supported codeblock syntax:**<br>
\`\`\`ruby<br>
require 'redcarpet'<br>
markdown = Redcarpet.new("Hello World!")<br>
puts markdown.to_html<br>
\`\`\`

\`\`\`<br>
\#\!ruby<br>
require 'redcarpet'<br>
markdown = Redcarpet.new("Hello World!")<br>
puts markdown.to_html<br>
\`\`\`

### Attention!

Script adds syntax highlighting feature, but it depends on [GNU Source-highlight](http://www.gnu.org/software/src-highlite/), so for work you must install it.

### Screenshot
![github_md in action](https://dl.dropboxusercontent.com/u/76506086/github/github_md/screens/github_md_screen.png)

### Features

* Syntax highlighting
* Github native markdown parser

### Requirements

* ruby 2.1.2 (maybe works on lower versions)

### Installation

Download and unpack **zip** / clone repo to anywhere you want, for example to `~/scripts/ruby/sublime_github_md/`

Open sublime text 3 Markmon user settings, and configure:

```js
{
    "command" : "ruby <PATH_TO_SCRIPT_DIR>/sublime_github_md/github_md.rb",
    "stylesheet" : "<PATH_TO_SCRIPT_DIR>/sublime_github_md/css/github.css"
}
```

# Thanks
@yyjhao [sublime-text-markmon](https://github.com/yyjhao/sublime-text-markmon)

@andyferra [github.css](https://gist.github.com/andyferra/2554919)

GitHub, Inc [github-markdown](https://rubygems.org/gems/github-markdown/)

Lorenzo Bettini [GNU Source-highlight](http://www.gnu.org/software/src-highlite/)