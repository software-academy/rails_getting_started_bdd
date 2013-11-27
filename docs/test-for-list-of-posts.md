---
layout: default
title: Test for list of posts
---

<h1 id="main">Test for list of posts</h1>
Update file `spec/features/posts_spec.rb`

Add
<pre><code>&nbsp;
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
     end
   end</code></pre>


Becomes
<pre><code>     click_button &#39;Save Post&#39;
     expect(page).to have_content(&#39;Rails is Awesome!&#39;)
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
     end
   end
&nbsp;
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/98ececf6ef7c76a30fcc6cdde28dd0ef0cef89e2)

