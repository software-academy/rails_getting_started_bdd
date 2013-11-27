---
layout: default
title: Test for Hello, Rails
---

<h1 id="main">Test for Hello, Rails</h1>
Create file `spec/features/hello_world_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 feature &#39;The world&#39; do
   scenario &#39;sees Hello, Rails!&#39; do
     visit &#39;/&#39;
     expect(page).to have_content(&#39;Hello, Rails!&#39;)
   end
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/fceaecd67f9f556d74e6bd441eb46bb2cc7b0cfc)

