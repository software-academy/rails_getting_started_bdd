---
layout: default
title: Test for commenting on a post
---

<h1 id="main">Test for commenting on a post</h1>
Create file `spec/features/comments_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
 
 feature &#39;Comments&#39; do
   background do
     @post = create :post
   end
 
   scenario &#39;can be added when viewing a post&#39; do
     visit post_path(@post)
     fill_in &#39;Commenter&#39;, with: &#39;Concerned Citizen&#39;
     fill_in &#39;Body&#39;, with: &#39;Great post!&#39;
     click_button &#39;Create Comment&#39;
     expect(current_path).to eq post_path(@post)
     expect(page).to have_content(&#39;Comment: Great post!&#39;)
   end
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/0feb72974ee16d0531553bd17099563dacf159da)

