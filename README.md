# github_md.rb

Ruby script to provide bridge to [github-markdown gem](https://rubygems.org/gems/github-markdown) for [Sublime Text 3 - Markmon](https://github.com/yyjhao/sublime-text-markmon) plugin.

## Attention!

Script adds syntax highlighting feature, but it depends on [GNU Source-highlight](http://www.gnu.org/software/src-highlite/), so for work you must install it.

## Features:

* Syntax highlighting
* Github native markdown parser

## Installation:

Download and unpack **zip** / clone repo to anywhere you want, for example to `~/scripts/ruby/github_md/`

Open sublime text 3 Markmon user settings, and configure:

```js
{
    "command" : "ruby <PATH_TO_SCRIPT_DIR>/github-markdown/github_md.rb",
    "stylesheet" : "<PATH_TO_SCRIPT_DIR>/github-markdown/css/github.css"
}
```

## Thanks:
@yyjhao [sublime-text-markmon](https://github.com/yyjhao/sublime-text-markmon)

@andyferra [github.css](https://gist.github.com/andyferra/2554919)

GitHub, Inc [github-markdown](https://rubygems.org/gems/github-markdown/)

Lorenzo Bettini [GNU Source-highlight](http://www.gnu.org/software/src-highlite/)