---
layout: default
title: Add comments to posts
---

<h1 id="main">Add comments to posts</h1>
###Create file `app/assets/javascripts/comments.js.coffee`

####Add
```
 # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
 # You can use CoffeeScript in this file: http://coffeescript.org/
```


###Create file `app/assets/stylesheets/comments.css.scss`

####Add
```
 // Place all the styles related to the Comments controller here.
 // They will automatically be included in application.css.
 // You can use Sass (SCSS) here: http://sass-lang.com/
```


###Create file `app/controllers/comments_controller.rb`

####Add
```
 class CommentsController < ApplicationController
   def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
     redirect_to post_path(@post)
   end
 end
```


###Create file `app/helpers/comments_helper.rb`

####Add
```
 module CommentsHelper
 end
```


###Update file `app/views/posts/show.html.erb`

####Add
```
 <h2>Comments</h2>
 <% @post.comments.each do |comment| %>
   <p>
     <strong>Commenter:</strong>
     <%= comment.commenter %>
   </p>
 
   <p>
     <strong>Comment:</strong>
     <%= comment.body %>
   </p>
 <% end %>
 
 <h2>Add a comment:</h2>
 <%= form_for([@post, @post.comments.build]) do |f| %>
   <p>
     <%= f.label :commenter %><br />
     <%= f.text_field :commenter %>
   </p>
   <p>
     <%= f.label :body %><br />
     <%= f.text_area :body %>
   </p>
   <p>
     <%= f.submit %>
   </p>
 <% end %>
```


####Becomes
```
   <%= @post.text %>
 </p>
 
 <h2>Comments</h2>
 <% @post.comments.each do |comment| %>
   <p>
     <strong>Commenter:</strong>
     <%= comment.commenter %>
   </p>
 
   <p>
     <strong>Comment:</strong>
     <%= comment.body %>
   </p>
 <% end %>
 
 <h2>Add a comment:</h2>
 <%= form_for([@post, @post.comments.build]) do |f| %>
   <p>
     <%= f.label :commenter %><br />
     <%= f.text_field :commenter %>
   </p>
   <p>
     <%= f.label :body %><br />
     <%= f.text_area :body %>
   </p>
   <p>
     <%= f.submit %>
   </p>
 <% end %>
 
 <%= link_to 'Back', posts_path %>
 | <%= link_to 'Edit', edit_post_path(@post) %>
\ No newline at end of file

```


###Update file `config/routes.rb`

####Change
```
   resources :posts
```


####To
```
   resources :posts do
     resources :comments
   end
```


####Becomes
```
 Blog::Application.routes.draw do
   resources :posts do
     resources :comments
   end
 
   root 'welcome#index'
 end

```


###Create file `spec/controllers/comments_controller_spec.rb`

####Add
```
 require 'spec_helper'
 
 describe CommentsController do
   context 'when there is a post' do
     let(:my_post) { create :post }
 
     describe 'POST #create' do
       it "redirects to the post's :show view" do
         post :create, { post_id: my_post.id, comment: { commenter: 'Concerned Person', body: 'Great Post!' } }
         expect(response).to redirect_to post_path(my_post)
       end
     end
   end
 end
```


###Create file `spec/helpers/comments_helper_spec.rb`

####Add
```
 require 'spec_helper'
 
 # Specs in this file have access to a helper object that includes
 # the CommentsHelper. For example:
 #
 # describe CommentsHelper do
 #   describe "string concat" do
 #     it "concats two strings with spaces" do
 #       expect(helper.concat_strings("this","that")).to eq("this that")
 #     end
 #   end
 # end
 describe CommentsHelper do
   pending "add some examples to (or delete) #{__FILE__}"
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/86fff3cb3042907e050bf26a5d6650966858397e)

