---
layout: default
title: Add validation for Post#title
---

<h1 id="main">Add validation for Post#title</h1>
###Update file `app/models/post.rb`

####Add
```
   validates :title, presence: true,
                     length: { minimum: 5 }
```


####Becomes
```
 class Post < ActiveRecord::Base
   validates :title, presence: true,
                     length: { minimum: 5 }
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/04c16ce742179e2a64a0af07fcb8ef99892bd882)

