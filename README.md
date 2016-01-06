# Honoka Rails

This project rocks and uses MIT-LICENSE.

## Usage

honoka-rails is easy to drop into Rails with the asset pipeline.

```rb
gem 'sass-rails', '>= 3.2'
gem 'honoka-rails', github: 'iguchi1124/honoka-rails'
```

bundle install and restart your server to make the files available through the pipeline.

Import Bootstrap(Honoka) styles in app/assets/stylesheets/application.scss:

```
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
```

```scss
// "bootstrap-sprockets" must be imported before "bootstrap" and "bootstrap/variables"
@import "bootstrap-sprockets";
@import "honoka";
```

Then, remove all the

``*= require_self`` and ``*= require_tree .`` statements from the sass file. Instead,use @import to import Sass files.

Do not use ``*= require`` in Sass or your other stylesheets will not be able to access the Bootstrap mixins or variables.

Require Bootstrap Javascripts in app/assets/javascripts/application.js:

```js
//= require jquery
//= require bootstrap-sprockets
```

bootstrap-sprockets and bootstrap should not both be included in application.js.

## References

[bootstrap-sass](https://github.com/twbs/bootstrap-sass)
[Honoka](http://honokak.osaka/)
