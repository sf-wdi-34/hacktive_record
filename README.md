# Hacktive Record
In this lab you will learn how to create seed data and use a simplified ORM dubbed "HacktiveRecord" (a pun on "ActiveRecord" from Rails). We will be working with the `FFaker` gem and modeling our data using classes and inheritance.

### 1. Hello World
When you run `ruby 1_hello.rb` you should see the following printed to your terminal:

    "Hello, my name is Web Developer, and I love gems!"

Modify the output to use __string interpolation__, and your own name and favorite thing.

### 2. Directors
When you run `ruby 2_directors.rb` you should see 10 lines of output, formatted like so:

  ```
  Marcelle Lemke, fatima_kassulke@yahoo.com, 268-716-9394
  Willow Tromp, cletus@hotmail.com, 533-525-2803
  Isaac Wiegand, koby@gmail.com, 405-265-7073
  Jany Grimes, hester@yahoo.com, 776-051-7214
  Claire Bergnaum, alysa_lockman@hotmail.com, 930-166-0029
  Estel Jewess, napoleon@yahoo.com, 736-721-8236
  Horacio Bradtke, fleta.kling@hotmail.com, 600-784-9153
  Adolphus Auer, destinee_rosenbaum@hotmail.com, 834-148-1402
  Summer Fritsch, tatum@hotmail.com, 331-063-3957
  Eugene Sawayn, maxime.feest@yahoo.com, 801-797-7849
  ```

Modify this file so that the output is _NOT_ hardcoded and instead changes for every run of the file.

You can achieve this goal relatively easily by using the `ffaker` gem.

1. First, add this gem to your `Gemfile` with this line:

  ```
  gem "ffaker"
  ```

2. Then, in Terminal, run:

  ```bash
  bundle install
  #or just
  bundle
  ```

3. To use this gem in `2_directors.rb`, you'll need to require it in that file:

  ```ruby
  # 2_directors.rb
  require 'ffaker'
  ```

3. Now dive into [FFaker's Documentation](https://github.com/ffaker/ffaker/blob/master/REFERENCE.md) to find what you need!

### 3. Director Class
Printing to the terminal is all very nice, but we want to actually be able to play with the data in server code. Instead of working with strings, let's print out _instances_ of class `Director`.

Modify the code in `models/director.rb` so that you can do something like this in `3_model_directors.rb`:

  ```ruby
  puts Director.new({first: "Rachel", last: "Theresia", email: "giovani@gmail.com"})
  ```
  > You should see a printout in your console that looks like:

  > ```#<Director:0x007fa86225cfa8 @first_name="Rachel", @last_name="Theresia", @email="giovani@gmail.com", @id=1>```


### 4. Hacktive Record
Now we're going to play with a super-simplified version of Active Record that we've dubbed "HacktiveRecord". HacktiveRecord will give models the ability to `save`, `create` and find `all` records (or "instances") of our class.

Let's start by modifying our `Director` class so that it inherits from `HacktiveRecord::Base`.

``` ruby
require "./hacktive_record.rb"
class Director < HacktiveRecord::Base
end
```

Now, we have two options for saving our instances.

```ruby
reichel = Director.new({first: "Rachel", last: "Theresia", email: "giovani@gmail.com"})
reichel.save
```
or

```ruby
reichel = Director.create({first: "Rachel", last: "Theresia", email: "giovani@gmail.com"})
```

We can also query for `all` the records in our pretend "database":

```ruby
puts Director.all
```

**Stretch**: Can you model both a `Director` and a `Movie` object, using our simplified HacktiveRecord? (Hint: you may need to specify `director_id` on your movie objects so you know who they belong to!)


##Pro Tip: Requiring Gems & the Ruby Console
You may be asking yourself, "can I try gems out in the console"? Yes!

To launch the REPL, type:

```bash
pry
```

Then require the `ffaker` gem in the REPL:

``` ruby
require 'ffaker'
```

But wait! If we're in a folder with a `bundle`d Gemfile, we can run:

```bash
bundle console
```

This will launch the Ruby REPL _AND_ require all the gems in our Gemfile.

For more info about `bundler`, try running `bundle --help`.

> Note: When we get to Rails, we'll use `rails console` for a similar effect.


##Ready for Rails!
This has been a very light introduction to faking data and working with models and inheritance. These are tasks we'll use in Rails with ActiveRecord!
