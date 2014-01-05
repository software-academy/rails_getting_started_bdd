---
layout: default
title: Test for valid Post#title
---

<h1 id="main">Test for valid Post#title</h1>
Update file `spec/models/post_spec.rb`

Change
<pre><code>   pending &quot;add some examples to (or delete) #{__FILE__}&quot;</code></pre>


To
<pre><code>   describe &#39;#title&#39; do
     it { expect(subject).to have_valid(:title).when &#39;X&#39;*5 }
     it { expect(subject).to_not have_valid(:title).when nil, &#39;&#39;, &#39;X&#39;*4 }
   end</code></pre>


Becomes
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe Post do
   describe &#39;#title&#39; do
     it { expect(subject).to have_valid(:title).when &#39;X&#39;*5 }
     it { expect(subject).to_not have_valid(:title).when nil, &#39;&#39;, &#39;X&#39;*4 }
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5497d64bbca1a4fa27b5a71a1976f50c297c34f8)

