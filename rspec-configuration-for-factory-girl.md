---
layout: default
title: RSpec configuration for factory_girl
---

<h1 id="main">RSpec configuration for factory_girl</h1>
Update file `spec/spec_helper.rb`

Add
<pre><code>   config.include FactoryGirl::Syntax::Methods</code></pre>


Becomes
<pre><code>   # If true, the base class of anonymous controllers will be inferred
   # automatically. This will be the default behavior in future versions of
   # rspec-rails.
   config.infer_base_class_for_anonymous_controllers = false
&nbsp;
   # Run specs in random order to surface order dependencies. If you find an
   # order dependency and want to debug it, you can fix the order by providing
   # the seed, which is printed after each run.
   #     --seed 1234
   config.order = &quot;random&quot;
   config.include FactoryGirl::Syntax::Methods
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/00e00b9a3b7ed0c54b79d4052b63abb9090706f7)

