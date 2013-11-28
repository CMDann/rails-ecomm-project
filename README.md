Rails_Ecomm_Project
===================
<a href="https://coderwall.com/cmdann"><img alt="Endorse CMDann on Coderwall" src="https://api.coderwall.com/cmdann/endorsecount.png" /></a>

<p>Ruby on Rails Final Project. Ecommerce Website. RRC BIT ECOMMERCE (RUBY)</p>

<p>Live version is deployed to heroku <a href="http://cmdann-rails-project.herokuapp.com/">here</a>. Although I am having issues deploying the app to Heroku using <a href="https://snap-ci.com">Snap-CI</a> due to both Ruby and Rails version on the Heroku end.</p>

<p>Check out <a href="http://cmdann.ca/">CMDann.ca</a></p>

<img src="http://www.rrc.mb.ca/images/new_home_page_images/rrc_logo.png">

<p>This project uses active admin as the admin backend. The default admin user login is:</p>
<pre>
Username: admin@example.com
Password: password
</pre>
<p>If you are going to use this, you should change that, not so secure</p>

Gems Used
=========
<pre>
<a href="http://badge.fury.io/rb/activeadmin"><img src="https://badge.fury.io/rb/activeadmin@2x.png" alt="Gem Version" height="18"></a> - Active Admin

<a href="http://badge.fury.io/rb/rails"><img src="https://badge.fury.io/rb/rails@2x.png" alt="Gem Version" height="18"></a> - Rails

<a href="http://badge.fury.io/rb/meta_search"><img src="https://badge.fury.io/rb/meta_search@2x.png" alt="Gem Version" height="18"></a> - Meta Search

<a href="http://badge.fury.io/rb/sass-rails"><img src="https://badge.fury.io/rb/sass-rails@2x.png" alt="Gem Version" height="18"></a> - SASS Rails

<a href="http://badge.fury.io/rb/jquery-rails"><img src="https://badge.fury.io/rb/jquery-rails@2x.png" alt="Gem Version" height="18"></a> - jQuery Rails

<a href="http://badge.fury.io/rb/compass"><img src="https://badge.fury.io/rb/compass@2x.png" alt="Gem Version" height="18"></a> - Compass

</pre>
Description of Contents
======================

The default directory structure of a generated Ruby on Rails application:
<pre>
  |-- app
  |   |-- admin
  |   |-- assets
  |   |   |-- images
  |   |   |-- javascripts
  |   |   `-- stylesheets
  |   |-- controllers
  |   |-- helpers
  |   |-- mailers
  |   |-- models
  |   |   `-- ckeditor
  |   `-- views
  |       |-- home
  |       |-- kaminari
  |       |-- pages
  |       |-- products
  |       |-- search
  |       `-- layouts
  |-- config
  |   |-- environments
  |   |-- initializers
  |   `-- locales
  |-- db
  |-- doc
  |-- lib
  |   |-- assets
  |   `-- tasks
  |-- log
  |-- public
  |-- script
  |-- test
  |   |-- fixtures
  |   |-- functional
  |   |-- integration
  |   |-- performance
  |   `-- unit
  |-- tmp
  |   `-- cache
  |       `-- assets
  `-- vendor
      |-- assets
      |   |-- javascripts
      |   `-- stylesheets
      `-- plugins
</pre>
app
<pre>
  Holds all the code that's specific to this particular application.
</pre>

app/assets
<pre>
  Contains subdirectories for images, stylesheets, and JavaScript files.
</pre>

app/controllers
<pre>
  Holds controllers that should be named like weblogs_controller.rb for
  automated URL mapping. All controllers should descend from
  ApplicationController which itself descends from ActionController::Base.
</pre>

app/models
<pre>
  Holds models that should be named like post.rb. Models descend from
  ActiveRecord::Base by default.
</pre>

app/views
<pre>
  Holds the template files for the view that should be named like
  weblogs/index.html.erb for the WeblogsController#index action. All views use
  eRuby syntax by default.
</pre>

app/views/layouts
<pre>
  Holds the template files for layouts to be used with views. This models the
  common header/footer method of wrapping views. In your views, define a layout
  using the <tt>layout :default</tt> and create a file named default.html.erb.
  Inside default.html.erb, call <% yield %> to render the view using this
  layout.
</pre>

app/helpers
<pre>
  Holds view helpers that should be named like weblogs_helper.rb. These are
  generated for you automatically when using generators for controllers.
  Helpers can be used to wrap functionality for your views into methods.
</pre>

config
<pre>
  Configuration files for the Rails environment, the routing map, the database,
  and other dependencies.
</pre>

db
<pre>
  Contains the database schema in schema.rb. db/migrate contains all the
  sequence of Migrations for your schema.
</pre>

doc
<pre>
  This directory is where your application documentation will be stored when
  generated using <tt>rake doc:app</tt>
</pre>

lib
<pre>
  Application specific libraries. Basically, any kind of custom code that
  doesn't belong under controllers, models, or helpers. This directory is in
  the load path.
</pre>

public
<pre>
  The directory available for the web server. Also contains the dispatchers and the
  default HTML files. This should be set as the DOCUMENT_ROOT of your web
  server.
</pre>

script
<pre>
  Helper scripts for automation and generation.
</pre>

test
<pre>
  Unit and functional tests along with fixtures. When using the rails generate
  command, template test files will be generated for you and placed in this
  directory.
</pre>

vendor
<pre>
  External libraries that the application depends on. Also includes the plugins
  subdirectory. If the app has frozen rails, those gems also go here, under
  vendor/rails/. This directory is in the load path.
</pre>  

<img src="http://cmdann.ca/wp-content/themes/CMDannWPTheme2/images/object973716115.png">

Change Log
==========
<pre>
11.28.2013 - Altered search results to display related search results in the category
           - Altered search result route to paginate search results
           - Fixed up message partial to not always display a message
           - Changed message content to the contents of the flash message
           - Added cart session
           - Can now add and remove items from your shopping cart
           - Cart lists items in your cart session
           - Added sass variables
           - Valid HTML5 markup
           - Added routes for adding, removing items to cart, empty cart

11.27.2013 - Added tabs to product detail page
           - Removed status from orders
           - Added status model to database
           - Added status associations and validations
           - Added status to active admin
           - Added priorities to the active admin navigation bar
           - Added drop down menus to the active admin nav bar

11.26.2013 - Added a "New" page that displays newest products
           - Added "add to cart buttons" (cart not implemented)
           - Added disabled buttons for sold out items
           - Fixed up sizes for products being displayed
           - Changed product descriptions to raw output
           - Added CKEDitor for description
           - Added default image for products without images added
           - Added default size for image thumbnails
           - Prepred rails application for deployment on heroku
           - Added shopping cart route and page
           - Styled shopping cart, check for session
           - Added empty cart message
           - Began to implement adding items to cart
           - Added message output area for flash messages
           - Added message partial to handle displaying the correct message

11.25.2013 - Fixed paperclip image output, using correct tags
           - Added production gems for production on heroku
           - Deployed to personal server (no heroku yet)

11.24.2013 - Fixed category links on product pages
           - Added category navigation bar to side layout
           - Added pages dynamically to site navigation
           - Added categories dynamically to category nav bar
           - Added pagination to index page
           - Added pagination to search results and categories
           - Search now looks at product title and description

11.23.2013 - Added page model to the database
           - Added page resource to active admin
           - Added page route to routes, can view page content from partial
           - Added CKEditor Gem, implemented with paperclip and active admin
           - Began to add page links to template navigation bar. (hard coded for now)
           - Added "On Sale" and "SOLD OUT" badges to products
           - Added category search
           - Added "No product found" message to the category search
           - Created category partial to list all categories
           - Changed product page category tags to links to category search

11.22.2013 - Added basic SASS styles to the site
           - Added boostrap theme to the framework
           - Added product reviews to product pages

11.21.2013 - Added search functionality to the site
           - Added bootstrap css framework
           - Implemented bootstrap styles
           - Added SQL injection prevention
           - Added better search functionality

11.18.2013 - Added image support
           - Configured Active Admin to work with paperclip

11.15.2013 - Added categories model
           - Removed category from product and replaced with category_id
           - Added categories to active admin
           - Added associations to categories
           - Added missing validations
           
11.14.2013 - Added Reviews, Provinces, Orders, and Customers to admin panel.
           - Changed currency to dollars
           - Fixed protected variables error in db models
           - Added product list to index page of store
           - Added individual product page
           - Added admin link to index
           
11.13.2013 - Fixed associations between products and lineitems
           - Fixed adding and updating products on the back end of the site
           - Added product categories
           
11.11.2013 - Added products to active admin
           - Added missing foreign keys and category option to products
           - Added validations to the models

11.10.2013 - Added Database and model associations
           - Added Active Admin
           - Set up initil routes
           - Began Active Admin setup
           
11.07.2013 - Added Initial Rails Files
</pre>

