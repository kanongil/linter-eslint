# linter-eslint

This linter plugin for [Linter](https://github.com/AtomLinter/Linter) provides an interface to [eslint](http://eslint.org/). It will be used with files that have the “JS” syntax.

## Installation
The Linter package must be installed in order to use this plugin.

### Plugin installation
```
$ apm install linter linter-eslint
```

## Settings
You can configure linter-eslint by editing ~/.atom/config.cson (choose `Open Your Config` in Atom menu):
```
'linter-eslint':
  'eslintExecutablePath': null #eslint path. run 'which eslint' to find the path
```

## Caveats

 * Due to temporary file names, `.eslintignore` files are not supported. Pull requests to fix this issue are welcome.

# License

The MIT License (MIT)

Copyright (c) 2014 Gil Pedersen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
