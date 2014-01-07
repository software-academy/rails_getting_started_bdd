---
layout: default
title: Update welcome#index view and routes
---

<h1 id="main">Update welcome#index view and routes</h1>
###Update file `app/views/welcome/index.html.erb`

####Remove
```
 <h1>Welcome#index</h1>
 <p>Find me in app/views/welcome/index.html.erb</p>
```


####Add
```
 <h1>Hello, Rails!</h1>
```


####Becomes
```
 <h1>Hello, Rails!</h1>
\ No newline at end of file

```


###Update file `config/routes.rb`

####Remove
```
   get "welcome/index"
```


####Change
```
   # root 'welcome#index'
```


####To
```
   root 'welcome#index'
```


####Becomes
```
 Blog::Application.routes.draw do
   # The priority is based upon order of creation: first created -> highest priority.
   # See how all your routes lay out with "rake routes".
 
   # You can have the root of your site routed with "root"
   root 'welcome#index'
 
   # Example of regular route:
   #   get 'products/:id' => 'catalog#view'

```


####Becomes
```
   #       get 'recent', on: :collection
   #     end
   #   end
 
   # Example resource route with concerns:
   #   concern :toggleable do
   #     post 'toggle'

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/588d57385c2c9652835af0663565ef7b2a4ff3de)

