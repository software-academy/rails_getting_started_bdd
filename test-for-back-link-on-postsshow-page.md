---
layout: default
title: Test for Back link on posts#show page
---

<h1 id="main">Test for Back link on posts#show page</h1>
Update file `spec/features/posts_spec.rb`

Add
<pre><code>&nbsp;
     scenario &#39;can get back to list page from show page&#39; do
       visit post_path(Post.first)
       click_link &#39;Back&#39;
       expect(current_path).to eq posts_path
     end</code></pre>


Becomes
<pre><code>       expect(page).to have_content(&#39;My first post&#39;)
       expect(page).to have_content(&#39;My second post&#39;)
     end
&nbsp;
     scenario &#39;can get back to list page from show page&#39; do
       visit post_path(Post.first)
       click_link &#39;Back&#39;
       expect(current_path).to eq posts_path
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/74c636cb2632e447ea3bbafe2b808948c2cf3333)

