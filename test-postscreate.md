---
layout: default
title: Test posts#create
---

<h1 id="main">Test posts#create</h1>

###Update file `spec/controllers/posts_controller_spec.rb`

####Add
```
   describe 'POST #create' do
     it "redirects to the :show view" do
       post :create, post: { title: 'title', text: 'text' }
       expect(response).to redirect_to assigns[:post]
     end
   end
```


####Becomes
```
     end
   end
 
   describe 'POST #create' do
     it "redirects to the :show view" do
       post :create, post: { title: 'title', text: 'text' }
       expect(response).to redirect_to assigns[:post]
     end
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/497cc7b2764fbd7462bd04fc363a311fd1b932d1)

