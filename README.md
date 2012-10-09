SpreePrettyphoto
================

PrettyPhoto extension uses deface to override view in product detail.
Original product.js.coffe from spree-core is temporaly override by itself file in this rails engine.

You must do (for working):

in your main_app add at the end of  app/assets/javascripts/store/all.js:

//= require store/spree_prettyphoto

in your main_app add at the end of  app/assets/stylesheets/store/all.css:

*= require store/spree_prettyphoto

Ladies and gentlemens start your engines! That's all folks...

Example
=======

Example goes here.

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2012 [spree_prettyphoto Martin Rychlovsky], released under the New BSD License
