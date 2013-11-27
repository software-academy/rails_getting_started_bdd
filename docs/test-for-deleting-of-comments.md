---
layout: default
title: Test for deleting of comments
---

<h1 id="main">Test for deleting of comments</h1>
Update file `spec/controllers/comments_controller_spec.rb`

Add
<pre><code>&nbsp;
     context &#39;with a comment&#39; do
       let(:comment) { create :comment, post: my_post }
&nbsp;
       describe &#39;DELETE #destroy&#39; do
         it &quot;redirects to the post&#39;s :show view&quot; do
           delete :destroy, post_id: my_post.id, id: comment.id
           expect(response).to redirect_to post_path(my_post)
         end
       end
     end</code></pre>


Becomes
<pre><code>         expect(response).to redirect_to post_path(my_post)
       end
     end
&nbsp;
     context &#39;with a comment&#39; do
       let(:comment) { create :comment, post: my_post }
&nbsp;
       describe &#39;DELETE #destroy&#39; do
         it &quot;redirects to the post&#39;s :show view&quot; do
           delete :destroy, post_id: my_post.id, id: comment.id
           expect(response).to redirect_to post_path(my_post)
         end
       end
     end
   end
 end
</code></pre>


Update file `spec/factories/comments.rb`

Change
<pre><code>     post nil</code></pre>


To
<pre><code>     post</code></pre>


Becomes
<pre><code>   factory :comment do
     commenter &quot;MyString&quot;
     body &quot;MyText&quot;
     post
   end
 end
</code></pre>


Update file `spec/features/comments_spec.rb`

Add
<pre><code>     @comment = build :comment, body: &#39;This is the comment&#39;</code></pre>


Add
<pre><code>     @post.comments &lt;&lt; @comment
     @post.save</code></pre>


Add
<pre><code>&nbsp;
   scenario &#39;can be deleted&#39;, js: true do
     visit post_path(@post)
     expect(page).to have_content &#39;This is the comment&#39;
     page.driver.accept_js_confirms!
     click_link &#39;Destroy Comment&#39;
     expect(page).not_to have_content &#39;This is the comment&#39;
   end</code></pre>


Becomes
<pre><code>&nbsp;
 feature &#39;Comments&#39; do
   background do
     @comment = build :comment, body: &#39;This is the comment&#39;
     @post = create :post
     @post.comments &lt;&lt; @comment
     @post.save
   end
&nbsp;
   scenario &#39;can be added when viewing a post&#39; do
@@ -13,4 +16,12 @@ feature &#39;Comments&#39; do
     expect(current_path).to eq post_path(@post)
     expect(page).to have_content(&#39;Comment: Great post!&#39;)
   end
&nbsp;
   scenario &#39;can be deleted&#39;, js: true do
     visit post_path(@post)
     expect(page).to have_content &#39;This is the comment&#39;
     page.driver.accept_js_confirms!
     click_link &#39;Destroy Comment&#39;
     expect(page).not_to have_content &#39;This is the comment&#39;
   end
 end
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/8d02d6c95bb14a4019d2b18b2d9b0bcd0c9e8146)

