# Hacktive Record
In this lab you will learn how to create seed data and use a simplified ORM dubbed "HacktiveRecord" (a pun on "ActiveRecord" from Rails). We will be working with the `FFaker` gem and modeling our data using classes and inheritance.

### 1. Hello World
When you run `ruby 1_hello.rb` you should see the following printed to your terminal:

    "Hello, my name is Generic Student and I live at 123 Rudimentary Dr, Oakland California. I lurv geraniums!"

Modify the output to use __string interpolation__, and your own name, address, and most favoritest thing in teh world.

Bonus: print it ten times.

### 2. Motivational Speakers
When you run `ruby 2_speakers.rb` you should see 10 lines of output, formatted like so:

    Rachel Theresia, giovani@gmail.com, 415-253-3253
    Botsford Vicenta, ernestine@gmail.com, 716-282-1443
    Waters Nayeli, annabel_walter@gmail.com, 415-793-2549
    ...


This output should _NOT_ be hardcoded. It should change for every run of the file!

To achieve this goal, you will need to familiarize yourself with the `ffaker` gem.

First, install the gems in your `Gemfile`. Simply run:  

```bash
bundle install
#or just
bundle
```

You can also install gems individually (e.g. `gem install ffaker`), but `bundle` is better in this case.

Now dive into [FFaker's Documentation](https://github.com/ffaker/ffaker/blob/master/REFERENCE.md)!

####Pro Tip: Requiring Gems & the Ruby Console
You're probably asking yourself, "how can I play with this ffaker data?". Why, in the Ruby Console of course!

To launch the REPL, type:

``` bash
irb
# or
pry
```

Then require the `ffaker` gem in the REPL:

``` ruby
require 'ffaker'
# your code here
```

But wait! We get all that for free if we just run:

``` bash
bundle console
# when we get to Rails, we'll use:
rails console
```

This will launch the Ruby REPL _AND_ require all the gems in our Gemfile.

For more info about `bundler`, try running `bundle --help`.

### 3. Motivational Talks
Printing to the terminal is all very nice, but we want to actually be able to play with the data. Let's convert our talks into _objects_. When you run `3_talks_data.rb` you should see something along the lines of:


    Speakers:
    {first: "Rachel", last: "Theresia", email: "giovani@gmail.com"}
    {first: "Botsford", last: "Vicenta", email: "ernestine@gmail.com"}
    {first: "Waters", last: "Nayeli", email: "annabel_walter@gmail.com"}
    ...

    Talks:
    {topic: "Organized secondary matrices", duration: 30}
    {topic: "Networked incremental focus group", duration: 45}
    {topic: "Optional cohesive middleware", duration: 60}
    ...


### 4. Model Speakers
Now let's take it up a notch. Instead of printing out objects, let's print out _instances_ of class `Speaker`. When I run `ruby 4_model_speakers.rb`, I expect to see the guts of our objects printed out like this:

    #<Speaker:0x007fa86225cfa8 @first_name="Herman", @last_name="Delia", @email="charlene@yahoo.com", @id=1>
    #<Speaker:0x007fa86225cc60 @first_name="Kessler", @last_name="George", @email="bernie@hotmail.com", @id=2>

You'll need to modify the code in `models/speaker.rb` so that you can do something like this in `4_model_speakers.rb`:

```ruby
puts Speaker.new({first: "Rachel", last: "Theresia", email: "giovani@gmail.com"})
```

### 5. Hacktive Record
Now we're going to play with a super-simplified version of Active Record I've dubbed "HacktiveRecord". HacktiveRecord will give our models the ability to `save`, `create` and find `all` records (or "instances") of our class.

Let's start by modifying our `Speaker` class so that it inherits from `HacktiveRecord::Base`.

``` ruby
require "./hacktive_record.rb"
class Speaker < HacktiveRecord::Base
end
```

Now, we have two options for saving our instances.

```ruby
reichel = Speaker.new({first: "Rachel", last: "Theresia", email: "giovani@gmail.com"})
reichel.save
```
or

```ruby
reichel = Speaker.create({first: "Rachel", last: "Theresia", email: "giovani@gmail.com"})
```

We can also query for `all` the records in our pretend "database":

```ruby
puts Speaker.all
```

**Stretch**: Can you model both a `Speaker` and a `Talk` object, using our simplified HacktiveRecord? (Hint: you may need to specify `speaker_id` on your talk objects so you know who they belong to!)

#Ready for Rails!
This has been a very light introduction to faking data, seeding your database, and working with models and inheritance. These are all tasks we'll use in Rails with ActiveRecord!
