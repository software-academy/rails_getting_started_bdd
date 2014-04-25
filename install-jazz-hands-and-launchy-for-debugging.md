---
layout: default
title: Install jazz_hands and launchy for debugging
---

<h1 id="main">Install jazz_hands and launchy for debugging</h1>

###Update file `Gemfile`

####Add
```
   gem 'jazz_hands'
```


####Add
```
   gem 'launchy'
```


####Becomes
```
   gem 'rspec-rails'
   gem 'capybara-webkit'
   gem 'factory_girl_rails'
   gem 'jazz_hands'
 end
 
 group :test do
   gem 'launchy'
   gem 'valid_attribute'
 end
 

```


###Update file `Gemfile.lock`

####Add
```
     addressable (2.3.5)
```


####Add
```
     awesome_print (1.2.0)
     binding_of_caller (0.7.2)
       debug_inspector (>= 0.0.1)
```


####Becomes
```
       multi_json (~> 1.3)
       thread_safe (~> 0.1)
       tzinfo (~> 0.3.37)
     addressable (2.3.5)
     arel (4.0.1)
     atomic (1.1.14)
     awesome_print (1.2.0)
     binding_of_caller (0.7.2)
       debug_inspector (>= 0.0.1)
     builder (3.1.4)
     capybara (2.1.0)
       mime-types (>= 1.16)

```


####Add
```
     coderay (1.0.9)
```


####Becomes
```
     capybara-webkit (1.0.0)
       capybara (~> 2.0, >= 2.0.2)
       json
     coderay (1.0.9)
     coffee-rails (4.0.1)
       coffee-script (>= 2.2.0)
       railties (>= 4.0.0, < 5.0)

```


####Add
```
     columnize (0.3.6)
     coolline (0.4.2)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (>= 0.3.1)
       debugger-linecache (~> 1.2.0)
       debugger-ruby_core_source (~> 1.2.3)
     debugger-linecache (1.2.0)
     debugger-ruby_core_source (1.2.3)
```


####Add
```
     diffy (3.0.1)
```


####Becomes
```
       coffee-script-source
       execjs
     coffee-script-source (1.6.3)
     columnize (0.3.6)
     coolline (0.4.2)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (>= 0.3.1)
       debugger-linecache (~> 1.2.0)
       debugger-ruby_core_source (~> 1.2.3)
     debugger-linecache (1.2.0)
     debugger-ruby_core_source (1.2.3)
     diff-lcs (1.2.4)
     diffy (3.0.1)
     erubis (2.7.0)
     execjs (2.0.2)
     factory_girl (4.2.0)

```


####Add
```
     grit (2.5.0)
       diff-lcs (~> 1.1)
       mime-types (~> 1.15)
       posix-spawn (~> 0.3.6)
```


####Add
```
     hirb (0.7.1)
```


####Add
```
     jazz_hands (0.5.2)
       awesome_print (~> 1.2)
       coolline (>= 0.4.2)
       hirb (~> 0.7.1)
       pry (~> 0.9.12)
       pry-debugger (~> 0.2.2)
       pry-doc (~> 0.4.6)
       pry-git (~> 0.2.3)
       pry-rails (~> 0.3.2)
       pry-remote (>= 0.1.7)
       pry-stack_explorer (~> 0.4.9)
       railties (>= 3.0, < 5.0)
```


####Becomes
```
     factory_girl_rails (4.2.1)
       factory_girl (~> 4.2.0)
       railties (>= 3.0.0)
     grit (2.5.0)
       diff-lcs (~> 1.1)
       mime-types (~> 1.15)
       posix-spawn (~> 0.3.6)
     hike (1.2.3)
     hirb (0.7.1)
     i18n (0.6.5)
     jazz_hands (0.5.2)
       awesome_print (~> 1.2)
       coolline (>= 0.4.2)
       hirb (~> 0.7.1)
       pry (~> 0.9.12)
       pry-debugger (~> 0.2.2)
       pry-doc (~> 0.4.6)
       pry-git (~> 0.2.3)
       pry-rails (~> 0.3.2)
       pry-remote (>= 0.1.7)
       pry-stack_explorer (~> 0.4.9)
       railties (>= 3.0, < 5.0)
     jbuilder (1.5.2)
       activesupport (>= 3.0.0)
       multi_json (>= 1.2.0)

```


####Add
```
     launchy (2.3.0)
       addressable (~> 2.3)
```


####Add
```
     method_source (0.8.2)
```


####Becomes
```
       railties (>= 3.0, < 5.0)
       thor (>= 0.14, < 2.0)
     json (1.8.1)
     launchy (2.3.0)
       addressable (~> 2.3)
     mail (2.5.4)
       mime-types (~> 1.16)
       treetop (~> 1.4.8)
     method_source (0.8.2)
     mime-types (1.25)
     mini_portile (0.5.2)
     minitest (4.7.5)

```


####Add
```
     posix-spawn (0.3.6)
     pry (0.9.12.2)
       coderay (~> 1.0.5)
       method_source (~> 0.8)
       slop (~> 3.4)
     pry-debugger (0.2.2)
       debugger (~> 1.3)
       pry (~> 0.9.10)
     pry-doc (0.4.6)
       pry (>= 0.9)
       yard (>= 0.8)
     pry-git (0.2.3)
       diffy
       grit
       pry (>= 0.9.8)
     pry-rails (0.3.2)
       pry (>= 0.9.10)
     pry-remote (0.1.7)
       pry (~> 0.9)
       slop (~> 3.0)
     pry-stack_explorer (0.4.9.1)
       binding_of_caller (>= 0.7)
       pry (>= 0.9.11)
```


####Becomes
```
     nokogiri (1.6.0)
       mini_portile (~> 0.5.0)
     polyglot (0.3.3)
     posix-spawn (0.3.6)
     pry (0.9.12.2)
       coderay (~> 1.0.5)
       method_source (~> 0.8)
       slop (~> 3.4)
     pry-debugger (0.2.2)
       debugger (~> 1.3)
       pry (~> 0.9.10)
     pry-doc (0.4.6)
       pry (>= 0.9)
       yard (>= 0.8)
     pry-git (0.2.3)
       diffy
       grit
       pry (>= 0.9.8)
     pry-rails (0.3.2)
       pry (>= 0.9.10)
     pry-remote (0.1.7)
       pry (~> 0.9)
       slop (~> 3.0)
     pry-stack_explorer (0.4.9.1)
       binding_of_caller (>= 0.7)
       pry (>= 0.9.11)
     rack (1.5.2)
     rack-test (0.6.2)
       rack (>= 1.0)

```


####Add
```
     slop (3.4.6)
```


####Becomes
```
     sdoc (0.3.20)
       json (>= 1.1.3)
       rdoc (~> 3.10)
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~> 1.2)
       multi_json (~> 1.0)

```


####Add
```
     yard (0.8.7.2)
```


####Becomes
```
     valid_attribute (1.3.1)
     xpath (2.0.0)
       nokogiri (~> 1.3)
     yard (0.8.7.2)
 
 PLATFORMS
   ruby

```


####Add
```
   jazz_hands
```


####Add
```
   launchy
```


####Becomes
```
   capybara-webkit
   coffee-rails (~> 4.0.0)
   factory_girl_rails
   jazz_hands
   jbuilder (~> 1.2)
   jquery-rails
   launchy
   rails (= 4.0.0)
   rspec-rails
   sass-rails (~> 4.0.0)

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5541b3c08d40f879566394213a35812b2653026e)

