---
layout: default
title: Test for editing a post
---

<h1 id="main">Test for editing a post</h1>
Update file `spec/features/posts_spec.rb`

Remove
<pre><code>       create :post, title: &#39;My first post&#39;
       create :post, title: &#39;My second post&#39;</code></pre>


Add
<pre><code>       @post1 = create :post, title: &#39;My first post&#39;
       @post2 = create :post, title: &#39;My second post&#39;</code></pre>


Add
<pre><code>     scenario &#39;can be edited&#39; do
       visit edit_post_path(@post1)
       fill_in &#39;Title&#39;, with: &#39;My first post has a new title&#39;
       click_button &#39;Save Post&#39;
       expect(current_path).to eq post_path(@post1)
       expect(page).to have_content(&#39;My first post has a new title&#39;)
     end</code></pre>


Becomes
<pre><code> 
   context &#39;when there are posts&#39; do
     before do
       @post1 = create :post, title: &#39;My first post&#39;
       @post2 = create :post, title: &#39;My second post&#39;
     end
 
     scenario &#39;can be listed&#39; do
@@ -46,6 +46,14 @@ feature &#39;Posts&#39; do
       expect(page).to have_content(&#39;My second post&#39;)
     end
 
     scenario &#39;can be edited&#39; do
       visit edit_post_path(@post1)
       fill_in &#39;Title&#39;, with: &#39;My first post has a new title&#39;
       click_button &#39;Save Post&#39;
       expect(current_path).to eq post_path(@post1)
       expect(page).to have_content(&#39;My first post has a new title&#39;)
     end
 
     scenario &#39;can get back to list page from show page&#39; do
       visit post_path(Post.first)
       click_link &#39;Back&#39;
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/41fc3537ec42ca1b0c27a39d26d8ce446ca0404d)

