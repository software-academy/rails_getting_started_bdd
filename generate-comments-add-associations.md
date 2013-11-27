---
layout: default
title: Generate comments, add associations
---

<h1 id="main">Generate comments, add associations</h1>
Create file `app/models/comment.rb`

Add
<pre><code> class Comment &lt; ActiveRecord::Base
   belongs_to :post
 end</code></pre>


Update file `app/models/post.rb`

Add
<pre><code>   has_many :comments</code></pre>


Becomes
<pre><code> class Post &lt; ActiveRecord::Base
   has_many :comments
   validates :title, presence: true,
                     length: { minimum: 5 }
 end
</code></pre>


Create file `db/migrate/20131106022339_create_comments.rb`

Add
<pre><code> class CreateComments &lt; ActiveRecord::Migration
   def change
     create_table :comments do |t|
       t.string :commenter
       t.text :body
       t.references :post, index: true
&nbsp;
       t.timestamps
     end
   end
 end</code></pre>


Update file `db/schema.rb`

Change
<pre><code> ActiveRecord::Schema.define(version: 20131101193007) do</code></pre>


To
<pre><code> ActiveRecord::Schema.define(version: 20131106022339) do
&nbsp;
   create_table &quot;comments&quot;, force: true do |t|
     t.string   &quot;commenter&quot;
     t.text     &quot;body&quot;
     t.integer  &quot;post_id&quot;
     t.datetime &quot;created_at&quot;
     t.datetime &quot;updated_at&quot;
   end
&nbsp;
   add_index &quot;comments&quot;, [&quot;post_id&quot;], name: &quot;index_comments_on_post_id&quot;</code></pre>


Becomes
<pre><code> #
 # It&#39;s strongly recommended that you check this file into your version control system.
&nbsp;
 ActiveRecord::Schema.define(version: 20131106022339) do
&nbsp;
   create_table &quot;comments&quot;, force: true do |t|
     t.string   &quot;commenter&quot;
     t.text     &quot;body&quot;
     t.integer  &quot;post_id&quot;
     t.datetime &quot;created_at&quot;
     t.datetime &quot;updated_at&quot;
   end
&nbsp;
   add_index &quot;comments&quot;, [&quot;post_id&quot;], name: &quot;index_comments_on_post_id&quot;
&nbsp;
   create_table &quot;posts&quot;, force: true do |t|
     t.string   &quot;title&quot;
</code></pre>


Create file `spec/factories/comments.rb`

Add
<pre><code> # Read about factories at https://github.com/thoughtbot/factory_girl
&nbsp;
 FactoryGirl.define do
   factory :comment do
     commenter &quot;MyString&quot;
     body &quot;MyText&quot;
     post nil
   end
 end</code></pre>


Create file `spec/models/comment_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe Comment do
   it { should belong_to :post }
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/e7e2e249c6a10b25740a84f57eed908198df43ed)

