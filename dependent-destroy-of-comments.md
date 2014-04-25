---
layout: default
title: Dependent destroy of comments
---

<h1 id="main">Dependent destroy of comments</h1>

###Update file `app/models/post.rb`

####Change
```
   has_many :comments
```


####To
```
   has_many :comments, dependent: :destroy
```


####Becomes
```
 class Post < ActiveRecord::Base
   has_many :comments, dependent: :destroy
   validates :title, presence: true,
                     length: { minimum: 5 }
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/b3a6aeb8f0b314d44f6bb283aa458dd2fafb8e80)

