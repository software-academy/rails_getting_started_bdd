---
layout: default
title: Dependent destroy of comments
---

<h1 id="main">Dependent destroy of comments</h1>
Update file `app/models/post.rb`

Change
<pre><code>   has_many :comments</code></pre>


To
<pre><code>   has_many :comments, dependent: :destroy</code></pre>


Becomes
<pre><code> class Post &lt; ActiveRecord::Base
   has_many :comments, dependent: :destroy
   validates :title, presence: true,
                     length: { minimum: 5 }
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/b3a6aeb8f0b314d44f6bb283aa458dd2fafb8e80)

