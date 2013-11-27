---
layout: default
title: Test for link to new post on posts page
---

<h1 id="main">Test for link to new post on posts page</h1>
Update file `spec/features/posts_spec.rb`

Add
<pre><code>   scenario &#39;can be created from link on posts page&#39; do
     visit posts_path
     click_link &#39;New post&#39;
     expect(current_path).to eq new_post_path
   end</code></pre>


Becomes
<pre><code>     expect(current_path).to eq posts_path
   end
&nbsp;
   scenario &#39;can be created from link on posts page&#39; do
     visit posts_path
     click_link &#39;New post&#39;
     expect(current_path).to eq new_post_path
   end
&nbsp;
   context &#39;when there are posts&#39; do
     before do
       create :post, title: &#39;My first post&#39;
@@ -27,5 +33,4 @@ feature &#39;Posts&#39; do
       expect(page).to have_content(&#39;My second post&#39;)
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/10fd24a4549e3925c1d33dd7e9d63c71f51d9ff2)

