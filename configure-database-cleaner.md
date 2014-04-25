---
layout: default
title: Configure database_cleaner
---

<h1 id="main">Configure database_cleaner</h1>

###Update file `spec/spec_helper.rb`

####Change
```
   config.use_transactional_fixtures = true
```


####To
```
   config.use_transactional_fixtures = false
```


####Becomes
```
   # If you're not using ActiveRecord, or you'd prefer not to run each of your
   # examples within a transaction, remove the following line or assign false
   # instead of true.
   config.use_transactional_fixtures = false
 
   # If true, the base class of anonymous controllers will be inferred
   # automatically. This will be the default behavior in future versions of

```


###Create file `spec/support/database.rb`

####Add
```
 RSpec.configure do |config|
   config.before(:each) do
     DatabaseCleaner.strategy = example.metadata[:js] ? :truncation : :transaction
     DatabaseCleaner.start
   end
 
   config.after(:each) do
     DatabaseCleaner.clean
   end
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/0f51817fa1d075b5fee6c7acd4c444fe4982b5bb)

