linterPath = atom.packages.getLoadedPackage("linter").path
Linter = require "#{linterPath}/lib/linter"
findFile = require "#{linterPath}/lib/util"

class LinterEslint extends Linter
  # The syntax that the linter handles. May be a string or
  # list/tuple of strings. Names should be all lowercase.
  @syntax: ['source.js', 'source.js.jquery']

  # A string, list, tuple or callable that returns a string, list or tuple,
  # containing the command line (with arguments) used to lint.
  cmd: 'eslint --no-ignore -f compact'

  linterName: 'eslint'

  # A regex pattern used to extract information from the executable's output.
  regex:
    '.+?: line (?<line>[0-9]+), col (?<col>[0-9]+), ' +
    '((?<error>Error)|(?<warning>Warning)) - '+
    '(?<message>.+)'

  # current working directory, overridden in linters that need it
  cwd: null

  isNodeExecutable: yes

  constructor: (editor) ->
    super(editor)

    config = findFile @cwd, ['.eslintrc']
    if config
      @cmd += " -c #{config}"

    atom.config.observe 'linter-eslint.eslintExecutablePath', @formatShellCmd

  formatShellCmd: =>
    eslintExecutablePath = atom.config.get 'linter-eslint.eslintExecutablePath'
    @executablePath = "#{eslintExecutablePath}"

  destroy: ->
    atom.config.unobserve 'linter-eslint.eslintExecutablePath'

module.exports = LinterEslint
