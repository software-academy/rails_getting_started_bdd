---
layout: default
title: Generate comments, add associations
---

<h1 id="main">Generate comments, add associations</h1>

Use a generator to create the comments object.  Run the following:

```sh
rails generate model Comment commenter:string body:text post:references
```

And then run:

```sh
rake db:migrate
```
### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/e7e2e249c6a10b25740a84f57eed908198df43ed)

