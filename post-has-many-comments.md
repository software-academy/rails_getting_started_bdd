---
layout: default
title: Post has_many comments
---

<h1 id="main">Post has_many comments</h1>
Update file `spec/models/post_spec.rb`

Add
<pre><code>   it { should have_many :comments }</code></pre>


Becomes
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe Post do
   it { should have_many :comments }
&nbsp;
   describe &#39;#title&#39; do
     it { expect(subject).to have_valid(:title).when &#39;X&#39;*5 }
     it { expect(subject).to_not have_valid(:title).when nil, &#39;&#39;, &#39;X&#39;*4 }
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/862aee34efc389501f95df5a375dd4da4ec8dee6)

