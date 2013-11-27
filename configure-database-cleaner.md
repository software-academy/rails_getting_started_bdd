---
layout: default
title: Configure database_cleaner
---

<h1 id="main">Configure database_cleaner</h1>
Update file `spec/spec_helper.rb`

Change
<pre><code>   config.use_transactional_fixtures = true</code></pre>


To
<pre><code>   config.use_transactional_fixtures = false</code></pre>


Becomes
<pre><code>   # config.mock_with :mocha
   # config.mock_with :flexmock
   # config.mock_with :rr
&nbsp;
   # Remove this line if you&#39;re not using ActiveRecord or ActiveRecord fixtures
   config.fixture_path = &quot;#{::Rails.root}/spec/fixtures&quot;
&nbsp;
   # If you&#39;re not using ActiveRecord, or you&#39;d prefer not to run each of your
   # examples within a transaction, remove the following line or assign false
   # instead of true.
   config.use_transactional_fixtures = false
&nbsp;
   # If true, the base class of anonymous controllers will be inferred
   # automatically. This will be the default behavior in future versions of
   # rspec-rails.
   config.infer_base_class_for_anonymous_controllers = false
&nbsp;
   # Run specs in random order to surface order dependencies. If you find an
   # order dependency and want to debug it, you can fix the order by providing
   # the seed, which is printed after each run.
   #     --seed 1234
</code></pre>


Create file `spec/support/database.rb`

Add
<pre><code> RSpec.configure do |config|
   config.before(:each) do
     DatabaseCleaner.strategy = example.metadata[:js] ? :truncation : :transaction
     DatabaseCleaner.start
   end
&nbsp;
   config.after(:each) do
     DatabaseCleaner.clean
   end
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/0f51817fa1d075b5fee6c7acd4c444fe4982b5bb)

