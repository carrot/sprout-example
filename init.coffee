chalk = require 'chalk'

# the CLI inputs are extremely powerful, and include features like
# validation, filters, conditionals and more;
# all powered by https://github.com/SBoudrias/Inquirer.js
# reference their docs to see how to use it's full power
exports.configure = [
  {
    name: 'name'
    message: 'What is your name?'
  },
  {
    name: 'food'
    type: 'list'
    message: 'What is your favorite food?'
    choices: ['pizza', 'sushi', 'cookies', 'other']
  }
]

exports.before = (utils) ->
  # EXAMPLE:
  # an example of including an external module
  console.log chalk.bgBlue("initializing your project!")

exports.beforeRender = (utils, config) ->
  emojis = {
    'pizza': ':pizza:',
    'sushi': ':sushi:',
    'cookies': ':cookie',
    'other': ':rowboat'
  }

  # EXAMPLE:
  # adding a new `emoji` local to be passed to our templates
  config.emoji = emojis[config.food]

exports.after = (utils, config) ->
  # EXAMPLE:
  # using sprout.utils to create a new file
  tgt = config.food + '.md'
  utils.target.write(tgt, 'this is the content of my new file!')
