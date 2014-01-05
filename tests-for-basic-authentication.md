---
layout: default
title: Tests for basic authentication
---

<h1 id="main">Tests for basic authentication</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code>   include AuthHelper
&nbsp;
   before(:each) do
     http_login
   end</code></pre>


Becomes
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe PostsController do
   include AuthHelper
&nbsp;
   before(:each) do
     http_login
   end
&nbsp;
   describe &#39;GET #new&#39; do
     it &quot;returns http success&quot; do
       get :new
       expect(response).to be_success
     end
   end
&nbsp;
   context &#39;when there is a post&#39; do
     let(:post) { create :post }
</code></pre>


Update file `spec/features/posts_spec.rb`

Remove
<pre><code>   scenario &#39;can be created&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;Rails is Awesome!&#39;
     fill_in &#39;Text&#39;, with: &#39;It really is.&#39;
     click_button &#39;Create Post&#39;
     expect(current_path).to eq post_path(Post.where(title: &#39;Rails is Awesome!&#39;).first)
   end</code></pre>


Add
<pre><code>   context &#39;when the user has authenticated&#39; do
     background do
       page.driver.browser.basic_authorize &#39;dhh&#39;, &#39;secret&#39;
     end</code></pre>


Remove
<pre><code>   scenario &#39;cannot be created without a title&#39; do
     visit new_post_path
     fill_in &#39;Title&#39;, with: &#39;&#39;
     click_button &#39;Create Post&#39;
     expect(page).to have_content(&quot;Title can&#39;t be blank&quot;)
   end</code></pre>


Add
<pre><code>     scenario &#39;can be created&#39; do
       visit new_post_path
       fill_in &#39;Title&#39;, with: &#39;Rails is Awesome!&#39;
       fill_in &#39;Text&#39;, with: &#39;It really is.&#39;
       click_button &#39;Create Post&#39;
       expect(current_path).to eq post_path(Post.where(title: &#39;Rails is Awesome!&#39;).first)
     end</code></pre>


Remove
<pre><code>   scenario &#39;can get back to list page from new page&#39; do
     visit new_post_path
     click_link &#39;Back&#39;
     expect(current_path).to eq posts_path
   end</code></pre>


Add
<pre><code>     scenario &#39;cannot be created without a title&#39; do
       visit new_post_path
       fill_in &#39;Title&#39;, with: &#39;&#39;
       click_button &#39;Create Post&#39;
       expect(page).to have_content(&quot;Title can&#39;t be blank&quot;)
     end</code></pre>


Remove
<pre><code>   scenario &#39;can be accessed from link on home page&#39; do
     visit root_path
     click_link &#39;My Blog&#39;
     expect(current_path).to eq posts_path
   end</code></pre>


Add
<pre><code>     scenario &#39;can get back to list page from new page&#39; do
       visit new_post_path
       click_link &#39;Back&#39;
       expect(current_path).to eq posts_path
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
       scenario &#39;can be edited&#39; do
         visit edit_post_path(@post1)
         fill_in &#39;Title&#39;, with: &#39;My first post has a new title&#39;
         click_button &#39;Update Post&#39;
         expect(current_path).to eq post_path(@post1)
         expect(page).to have_content(&#39;My first post has a new title&#39;)
       end</code></pre>


Remove
<pre><code>   scenario &#39;can be created from link on posts page&#39; do
     visit posts_path
     click_link &#39;New post&#39;
     expect(current_path).to eq new_post_path</code></pre>


Add
<pre><code>       scenario &#39;can be edited from show page&#39; do
         visit post_path(Post.first)
         click_link &#39;Edit&#39;
         expect(current_path).to eq edit_post_path(Post.first)
       end
     end</code></pre>


Remove
<pre><code>   context &#39;when there are posts&#39; do
     before do
       @post1 = create :post, title: &#39;My first post&#39;
       @post2 = create :post, title: &#39;My second post&#39;</code></pre>


Add
<pre><code>   context &#39;when the user has authenticated and javascript is needed&#39; do
     background do
       # TODO: Issue basic_auth headers</code></pre>


Remove
<pre><code>       visit posts_path
       within &#39;tr:last-child&#39; do
         page.driver.accept_js_confirms!
         click_link &#39;Destroy&#39;</code></pre>


Add
<pre><code>       pending(&#39;Unable to issue basic auth when js: true&#39;) do
         visit posts_path
         within &#39;tr:last-child&#39; do
           page.driver.accept_js_confirms!
           click_link &#39;Destroy&#39;
           expect(current_path).to eq posts_path
           expect(page).not_to have_content(&#39;My second post&#39;)
         end
       end
     end
   end
&nbsp;
   context &#39;when the user is anonymous&#39; do
     scenario &#39;can be accessed from link on home page&#39; do
       visit root_path
       click_link &#39;My Blog&#39;
       expect(current_path).to eq posts_path
     end
&nbsp;
     context &#39;when there are posts&#39; do
       before do
         @post1 = create :post, title: &#39;My first post&#39;
         @post2 = create :post, title: &#39;My second post&#39;
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
       scenario &#39;can get back to list page from show page&#39; do
         visit post_path(Post.first)
         click_link &#39;Back&#39;</code></pre>


Remove
<pre><code>         expect(page).not_to have_content(&#39;My second post&#39;)</code></pre>


Remove
<pre><code>&nbsp;
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
     scenario &#39;can be edited from show page&#39; do
       visit post_path(Post.first)
       click_link &#39;Edit&#39;
       expect(current_path).to eq edit_post_path(Post.first)
     end</code></pre>


Becomes
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 feature &#39;Posts&#39; do
   context &#39;when the user has authenticated&#39; do
     background do
       page.driver.browser.basic_authorize &#39;dhh&#39;, &#39;secret&#39;
     end
&nbsp;
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
     scenario &#39;can be created from link on posts page&#39; do
       visit posts_path
       click_link &#39;New post&#39;
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
       scenario &#39;can be edited&#39; do
         visit edit_post_path(@post1)
         fill_in &#39;Title&#39;, with: &#39;My first post has a new title&#39;
         click_button &#39;Update Post&#39;
         expect(current_path).to eq post_path(@post1)
         expect(page).to have_content(&#39;My first post has a new title&#39;)
       end
&nbsp;
       scenario &#39;can be edited from show page&#39; do
         visit post_path(Post.first)
         click_link &#39;Edit&#39;
         expect(current_path).to eq edit_post_path(Post.first)
       end
     end
   end
&nbsp;
   context &#39;when the user has authenticated and javascript is needed&#39; do
     background do
       # TODO: Issue basic_auth headers
     end
&nbsp;
     scenario &#39;can be deleted from link on posts page&#39;, js: true do
       pending(&#39;Unable to issue basic auth when js: true&#39;) do
         visit posts_path
         within &#39;tr:last-child&#39; do
           page.driver.accept_js_confirms!
           click_link &#39;Destroy&#39;
           expect(current_path).to eq posts_path
           expect(page).not_to have_content(&#39;My second post&#39;)
         end
       end
     end
   end
&nbsp;
   context &#39;when the user is anonymous&#39; do
     scenario &#39;can be accessed from link on home page&#39; do
       visit root_path
       click_link &#39;My Blog&#39;
       expect(current_path).to eq posts_path
     end
&nbsp;
     context &#39;when there are posts&#39; do
       before do
         @post1 = create :post, title: &#39;My first post&#39;
         @post2 = create :post, title: &#39;My second post&#39;
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
       scenario &#39;can get back to list page from show page&#39; do
         visit post_path(Post.first)
         click_link &#39;Back&#39;
         expect(current_path).to eq posts_path
       end
     end
   end
 end
</code></pre>


Create file `spec/support/auth_helper.rb`

Add
<pre><code> module AuthHelper
   def http_login
&nbsp;
     username = &#39;dhh&#39;
     password = &#39;secret&#39;
&nbsp;
     request.env[&#39;HTTP_AUTHORIZATION&#39;] = ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
   end
 end</code></pre>


Create file `spec/support/basic_auth.rb`

Add
<pre><code> RSpec.configure do |config|
   config.include AuthHelper, type: :controller
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/cfd13721058fd06bd45204e03954202b6837070f)

