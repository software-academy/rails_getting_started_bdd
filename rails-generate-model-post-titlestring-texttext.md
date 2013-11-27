---
layout: default
title: rails generate model Post title:string text:text
---

<h1 id="main">rails generate model Post title:string text:text</h1>
Create file `app/models/post.rb`

Add
<pre><code> class Post &lt; ActiveRecord::Base
 end</code></pre>


Create file `db/migrate/20131101193007_create_posts.rb`

Add
<pre><code> class CreatePosts &lt; ActiveRecord::Migration
   def change
     create_table :posts do |t|
       t.string :title
       t.text :text
&nbsp;
       t.timestamps
     end
   end
 end</code></pre>


Create file `db/schema.rb`

Add
<pre><code> # encoding: UTF-8
 # This file is auto-generated from the current state of the database. Instead
 # of editing this file, please use the migrations feature of Active Record to
 # incrementally modify your database, and then regenerate this schema definition.
 #
 # Note that this schema.rb definition is the authoritative source for your
 # database schema. If you need to create the application database on another
 # system, you should be using db:schema:load, not running all the migrations
 # from scratch. The latter is a flawed and unsustainable approach (the more migrations
 # you&#39;ll amass, the slower it&#39;ll run and the greater likelihood for issues).
 #
 # It&#39;s strongly recommended that you check this file into your version control system.
&nbsp;
 ActiveRecord::Schema.define(version: 20131101193007) do
&nbsp;
   create_table &quot;posts&quot;, force: true do |t|
     t.string   &quot;title&quot;
     t.text     &quot;text&quot;
     t.datetime &quot;created_at&quot;
     t.datetime &quot;updated_at&quot;
   end
&nbsp;
 end</code></pre>


Create file `spec/models/post_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe Post do
   pending &quot;add some examples to (or delete) #{__FILE__}&quot;
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/b07cb6760210f8d2dce41e821bb4f3356b13b851)

