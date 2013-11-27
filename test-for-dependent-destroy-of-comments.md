---
layout: default
title: Test for dependent destroy of comments
---

<h1 id="main">Test for dependent destroy of comments</h1>
Update file `spec/models/post_spec.rb`

Change
<pre><code>   it { should have_many :comments }</code></pre>


To
<pre><code>   it { should have_many(:comments).dependent(:destroy) }</code></pre>


Becomes
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe Post do
   it { should have_many(:comments).dependent(:destroy) }
&nbsp;
   describe &#39;#title&#39; do
     it { expect(subject).to have_valid(:title).when &#39;X&#39;*5 }
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/3db6d50615570f0715f7f214303f19ecd2452579)

