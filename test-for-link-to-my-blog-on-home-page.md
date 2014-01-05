---
layout: default
title: Test for link to My Blog on home page
---

<h1 id="main">Test for link to My Blog on home page</h1>
Update file `spec/features/posts_spec.rb`

Add
<pre><code>   scenario &#39;can be accessed from link on home page&#39; do
     visit root_path
     click_link &#39;My Blog&#39;
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
   scenario &#39;can be accessed from link on home page&#39; do
     visit root_path
     click_link &#39;My Blog&#39;
     expect(current_path).to eq posts_path
   end
&nbsp;
   context &#39;when there are posts&#39; do
     before do
       create :post, title: &#39;My first post&#39;
       create :post, title: &#39;My second post&#39;
     end
&nbsp;
     scenario &#39;can be listed&#39; do
       visit posts_path
       expect(page).to have_content(&#39;My first post&#39;)
       expect(page).to have_content(&#39;My second post&#39;)
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/74eb255e05627adce9c35da0895d4526a741ad99)

