---
layout: default
title: Generate comments, add associations
---

<h1 id="main">Generate comments, add associations</h1>
###Create file `app/models/comment.rb`

Add
```
 class Comment < ActiveRecord::Base
   belongs_to :post
 end
```


###Update file `app/models/post.rb`

Add
```
   has_many :comments
```


Becomes
```
 class Post < ActiveRecord::Base
   has_many :comments
   validates :title, presence: true,
                     length: { minimum: 5 }
 end

```


###Create file `db/migrate/20131106022339_create_comments.rb`

Add
```
 class CreateComments < ActiveRecord::Migration
   def change
     create_table :comments do |t|
       t.string :commenter
       t.text :body
       t.references :post, index: true
 
       t.timestamps
     end
   end
 end
```


###Update file `db/schema.rb`

Change
```
 ActiveRecord::Schema.define(version: 20131101193007) do
```


To
```
 ActiveRecord::Schema.define(version: 20131106022339) do
 
   create_table "comments", force: true do |t|
     t.string   "commenter"
     t.text     "body"
     t.integer  "post_id"
     t.datetime "created_at"
     t.datetime "updated_at"
   end
 
   add_index "comments", ["post_id"], name: "index_comments_on_post_id"
```


Becomes
```
 #
 # It's strongly recommended that you check this file into your version control system.
 
 ActiveRecord::Schema.define(version: 20131106022339) do
 
   create_table "comments", force: true do |t|
     t.string   "commenter"
     t.text     "body"
     t.integer  "post_id"
     t.datetime "created_at"
     t.datetime "updated_at"
   end
 
   add_index "comments", ["post_id"], name: "index_comments_on_post_id"
 
   create_table "posts", force: true do |t|
     t.string   "title"

```


###Create file `spec/factories/comments.rb`

Add
```
 # Read about factories at https://github.com/thoughtbot/factory_girl
 
 FactoryGirl.define do
   factory :comment do
     commenter "MyString"
     body "MyText"
     post nil
   end
 end
```


###Create file `spec/models/comment_spec.rb`

Add
```
 require 'spec_helper'
 
 describe Comment do
   it { should belong_to :post }
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/e7e2e249c6a10b25740a84f57eed908198df43ed)

