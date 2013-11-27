---
layout: default
title: Test for show and edit on index, edit on show
---

<h1 id="main">Test for show and edit on index, edit on show</h1>
Update file `spec/features/posts_spec.rb`

Add
<pre><code>     scenario &#39;can be edited from link on posts page&#39; do
       visit posts_path
       within &#39;tr:last-child&#39; do
         click_link &#39;Edit&#39;
         expect(current_path).to eq edit_post_path(@post2)
       end
     end
&nbsp;
     scenario &#39;can be viewed from link on posts page&#39; do
       visit posts_path
       within &#39;tr:last-child&#39; do
         click_link &#39;Show&#39;
         expect(current_path).to eq post_path(@post2)
       end
     end</code></pre>


Add
<pre><code>&nbsp;
     scenario &#39;can be edited from show page&#39; do
       visit post_path(Post.first)
       click_link &#39;Edit&#39;
       expect(current_path).to eq edit_post_path(Post.first)
     end</code></pre>


Becomes
<pre><code>     click_link &#39;New post&#39;
     expect(current_path).to eq new_post_path
   end
&nbsp;
   context &#39;when there are posts&#39; do
     before do
       @post1 = create :post, title: &#39;My first post&#39;
       @post2 = create :post, title: &#39;My second post&#39;
     end
&nbsp;
     scenario &#39;can be edited from link on posts page&#39; do
       visit posts_path
       within &#39;tr:last-child&#39; do
         click_link &#39;Edit&#39;
         expect(current_path).to eq edit_post_path(@post2)
       end
     end
&nbsp;
     scenario &#39;can be viewed from link on posts page&#39; do
       visit posts_path
       within &#39;tr:last-child&#39; do
         click_link &#39;Show&#39;
         expect(current_path).to eq post_path(@post2)
       end
     end
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
       click_button &#39;Save Post&#39;
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
     scenario &#39;can be edited from show page&#39; do
       visit post_path(Post.first)
       click_link &#39;Edit&#39;
       expect(current_path).to eq edit_post_path(Post.first)
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/3e97c7a60e5711124f9c0c33aef082814d8871cc)

