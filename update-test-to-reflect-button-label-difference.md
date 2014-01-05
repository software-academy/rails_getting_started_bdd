---
layout: default
title: Update test to reflect button label difference
---

<h1 id="main">Update test to reflect button label difference</h1>
Update file `spec/features/posts_spec.rb`

Change
<pre><code>     click_button &#39;Save Post&#39;</code></pre>


To
<pre><code>     click_button &#39;Create Post&#39;</code></pre>


Change
<pre><code>     click_button &#39;Save Post&#39;</code></pre>


To
<pre><code>     click_button &#39;Create Post&#39;</code></pre>


Change
<pre><code>       click_button &#39;Save Post&#39;</code></pre>


To
<pre><code>       click_button &#39;Update Post&#39;</code></pre>


Becomes
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 feature &#39;Posts&#39; do
   scenario &#39;can be created&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;Rails is Awesome!&#39;
     fill_in &#39;Text&#39;, with: &#39;It really is.&#39;
     click_button &#39;Create Post&#39;
     expect(current_path).to eq post_path(Post.where(title: &#39;Rails is Awesome!&#39;).first)
   end
&nbsp;
   scenario &#39;cannot be created without a title&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;&#39;
     click_button &#39;Create Post&#39;
     expect(page).to have_content(&quot;Title can&#39;t be blank&quot;)
   end
&nbsp;
   scenario &#39;can get back to list page from new page&#39; do
     visit new_post_path
     click_link &#39;Back&#39;
     expect(current_path).to eq posts_path
   end
&nbsp;
   scenario &#39;can be accessed from link on home page&#39; do
@@ -58,21 +58,21 @@ feature &#39;Posts&#39; do
&nbsp;
     scenario &#39;can be listed&#39; do
       visit posts_path
       expect(page).to have_content(&#39;My first post&#39;)
       expect(page).to have_content(&#39;My second post&#39;)
     end
&nbsp;
     scenario &#39;can be edited&#39; do
       visit edit_post_path(@post1)
       fill_in &#39;Title&#39;, with: &#39;My first post has a new title&#39;
       click_button &#39;Update Post&#39;
       expect(current_path).to eq post_path(@post1)
       expect(page).to have_content(&#39;My first post has a new title&#39;)
     end
&nbsp;
     scenario &#39;can get back to list page from show page&#39; do
       visit post_path(Post.first)
       click_link &#39;Back&#39;
       expect(current_path).to eq posts_path
     end
&nbsp;
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/42706a4b8bab70d68d5221df3a9f273ce161d488)

