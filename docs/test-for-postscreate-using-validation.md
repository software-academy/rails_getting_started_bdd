---
layout: default
title: Test for posts#create using validation
---

<h1 id="main">Test for posts#create using validation</h1>
Update file `spec/features/posts_spec.rb`

Change
<pre><code>     expect(page).to have_content(&#39;Rails is Awesome!&#39;)</code></pre>


To
<pre><code>     expect(current_path).to eq post_path(Post.where(title: &#39;Rails is Awesome!&#39;).first)
   end
 
   scenario &#39;cannot be created without a title&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;&#39;
     click_button &#39;Save Post&#39;
     expect(page).to have_content(&quot;Title can&#39;t be blank&quot;)</code></pre>


Becomes
<pre><code>     fill_in &#39;Title&#39;, with: &#39;Rails is Awesome!&#39;
     fill_in &#39;Text&#39;, with: &#39;It really is.&#39;
     click_button &#39;Save Post&#39;
     expect(current_path).to eq post_path(Post.where(title: &#39;Rails is Awesome!&#39;).first)
   end
 
   scenario &#39;cannot be created without a title&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;&#39;
     click_button &#39;Save Post&#39;
     expect(page).to have_content(&quot;Title can&#39;t be blank&quot;)
   end
 
   scenario &#39;can get back to list page from new page&#39; do
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/aca2f2369712af610a51ed14de410863d7e7c25b)

