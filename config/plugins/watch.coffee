module.exports = (lineman) ->
  config:
    watch:
      js:
        files: ["<%= files.js.vendor %>", "<%= files.js.app %>"]
        tasks: ["concat:js"]

      coffee:
        files: "<%= files.coffee.app %>"
        tasks: ["coffee", "concat:js"]

      jsSpecs:
        files: ["<%= files.js.specHelpers %>", "<%= files.js.spec %>"]
        tasks: ["concat:spec"]

      coffeeSpecs:
        files: ["<%= files.coffee.specHelpers %>", "<%= files.coffee.spec %>"]
        tasks: ["coffee", "concat:spec"]

      css:
        files: ["<%= files.css.vendor %>", "<%= files.css.app %>"]
        tasks: ["concat:css"]

      less:
        files: ["<%= files.less.vendor %>", "<%= files.less.app %>"]
        tasks: ["less", "concat:css"]

      sass:
        files: ["<%= files.sass.vendor %>", "<%= files.sass.app %>"]
        tasks: ["sass", "concat:css"]

      pages:
        files: ["<%= files.pages.source %>", "app/templates/homepage.us"]
        tasks: ["pages:dev"]

      handlebars:
        files: "<%= files.template.handlebars %>"
        tasks: ["handlebars", "concat:js"]

      jade:
        files: "<%= files.template.jade %>"
        tasks: ["jade", "concat:js"]

      underscore:
        files: "<%= files.template.underscore %>"
        tasks: ["jst", "concat:js"]

      images:
        files: ["<%= files.img.app %>", "<%= files.img.vendor %>"]
        tasks: ["images:dev"]

      lint:
        files: "<%= files.js.app %>"
        tasks: ["jshint"]

      webfonts:
        files: "<%= files.webfonts.vendor %>"
        tasks: ["webfonts:dev"]
