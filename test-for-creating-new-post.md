---
layout: default
title: Test for creating new post
---

<h1 id="main">Test for creating new post</h1>
Create file `spec/features/posts_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 feature &#39;Posts&#39; do
   scenario &#39;can be created&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;Rails is Awesome!&#39;
     fill_in &#39;Text&#39;, with: &#39;It really is.&#39;
     click_button &#39;Save Post&#39;
     expect(page).to have_content(&#39;Rails is Awesome!&#39;)
   end
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/0095998cd2c10a734f43685ae6c081bf772fc34c)

