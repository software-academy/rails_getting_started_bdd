---
layout: default
title: Test for back link on posts#new page
---

<h1 id="main">Test for back link on posts#new page</h1>
Update file `spec/features/posts_spec.rb`

Add
<pre><code>   scenario &#39;can get back to list page from new page&#39; do
     visit new_post_path
     click_link &#39;Back&#39;
     expect(current_path).to eq posts_path
   end</code></pre>


Becomes
<pre><code>     expect(page).to have_content(&#39;Rails is Awesome!&#39;)
   end
&nbsp;
   scenario &#39;can get back to list page from new page&#39; do
     visit new_post_path
     click_link &#39;Back&#39;
     expect(current_path).to eq posts_path
   end
&nbsp;
   scenario &#39;can be accessed from link on home page&#39; do
     visit root_path
     click_link &#39;My Blog&#39;
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/e1a5b5520d585bf0e2441419bf8f9854ea82c7d7)

