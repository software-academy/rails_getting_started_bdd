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
<pre><code>&nbsp;
 feature &#39;Posts&#39; do
   scenario &#39;can be created&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;Rails is Awesome!&#39;
     fill_in &#39;Text&#39;, with: &#39;It really is.&#39;
     click_button &#39;Save Post&#39;
     expect(page).to have_content(&#39;Rails is Awesome!&#39;)
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
     expect(current_path).to eq posts_path
   end
&nbsp;
   scenario &#39;can be created from link on posts page&#39; do
     visit posts_path
     click_link &#39;New post&#39;
     expect(current_path).to eq new_post_path
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/e1a5b5520d585bf0e2441419bf8f9854ea82c7d7)

