---
layout: default
title: Comments can be deleted from the show view
---

<h1 id="main">Comments can be deleted from the show view</h1>

###Update file `app/controllers/comments_controller.rb`

####Add
```
 
   def destroy
     @post = Post.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
     @comment.destroy
     redirect_to post_path(@post)
   end
```


####Becomes
```
     @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
     redirect_to post_path(@post)
   end
 
   def destroy
     @post = Post.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
     @comment.destroy
     redirect_to post_path(@post)
   end
 end

```


###Update file `app/views/comments/_comment.html.erb`

####Add
```
 </p>
 
 <p>
   <%= link_to 'Destroy Comment', [comment.post, comment],
                method: :delete,
                data: { confirm: 'Are you sure?' } %>
```


####Becomes
```
 <p>
   <strong>Comment:</strong>
   <%= comment.body %>
 </p>
 
 <p>
   <%= link_to 'Destroy Comment', [comment.post, comment],
                method: :delete,
                data: { confirm: 'Are you sure?' } %>
 </p>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/9e5dc158e719943ad07f3185dcdb5d3efce3a054)

