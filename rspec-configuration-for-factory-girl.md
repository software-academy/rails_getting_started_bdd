---
layout: default
title: RSpec configuration for factory_girl
---

<h1 id="main">RSpec configuration for factory_girl</h1>
Update file `spec/spec_helper.rb`

Add
<pre><code>   config.include FactoryGirl::Syntax::Methods</code></pre>


Becomes
<pre><code>   # the seed, which is printed after each run.
   #     --seed 1234
   config.order = &quot;random&quot;
   config.include FactoryGirl::Syntax::Methods
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/00e00b9a3b7ed0c54b79d4052b63abb9090706f7)

