# Week 5

## Introduction

Methods are a cornerstone of software development. They bring clarity to code. We focus on Classes this week in the exercises to demonstrate how we can create more cohesive objects that perform all the work that was previously spread across different methods.

This exercise will mostly be organizing the methods that we created last week into a class.

### Outline

#### Topics

* Classes
* Initialize Methods
* Member variables
* Attribute Accessors
* Alias methods
* Class Methods

#### Reading

* Programming Ruby, Chapter 3
* [Classes on WikiBooks](http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes)
* [Ruby Debug](http://bashdb.sourceforge.net/ruby-debug.html)
* Advanced: Metaprogramming Ruby, Chapter 4

#### Exercise

* Fork and clone this repository
* Fix the tests on a branch
* Push your changes to Github on that branch
* Git Merging and Tagging


## Exercise

The exercise are laid out the same as last week.

* Fork and clone this repository
* Run Bundler
* Run the tests / Setup Guard
* Switch to the 'solutions' branch
* Write the classes in the file contained in the lib directory.
* Commit your changes to the 'solutions' branch
* Push your 'solutions' branch up to Github
* Merge your 'solutions' branch back onto Master
* Tag that you are 'complete'

### Working in the lib directory

Ruby has no requirement that the class within the file matches the name of the file. You are also not limited to having a single class within a file. However, it is a good convention to create a file for each class. This makes it easier to find the classes later as they will match to the filename.

The files in the `lib` directory have a test file counterpart within the `spec` directory. This is also a convention, though a more loosely enforced one. But it is often good practice to have the tests related to a class in a similarly named file.

### Merge your 'solutions' branch back onto Master

When you are done with your branch it's time to re-incorporate those changes back to your master branch. It's really easy if you haven't made changes to your master branch.

First, return back to your `master` branch

    $ git checkout master

Second, merge the local `solutions` branch onto your current branch
    
    $ git merge solutions
    
Third, push your new updated `master` branch to origin.

    $ git push origin master
  
### Tag that you are 'complete'

Tags are a great way to mark releases. They are also useful as they can be used as references when you want to return to a position in time that is important. Like when the software as at version `0.1.1` or whatever the name the tag.

With your completed `master` branch with solutions this is a good time to mark it in case you want to explore or share some other solutions on the `master` branch.

    $ git checkout master
    
Give the master branch a tag at this point in time. Here we will state that the branch is 'complete' as the solutions are all in for the assignment.

    $ git tag complete
    
Now notify origin with the tag name:

    $ git push origin master --tags
    
If you visit your project page you will see that a new entry is available in the tags section.

## Exploration

Included with this exercise are a few libraries that likely have the skill and expertise to work with and integrate into some of the exploratory work that you
may have done with your Sinatra website or your Highline command-line application.

When first working with an API for the first time it is often faster to use IRB or ruby-debug because you often don't know where to start.

If you decide to write functions or classes that wrap these APIs and you want to write tests to accompany them be sure to open `lib/assignment.rb` to uncomment the two lines that require each of the files for the twitter file and craigslist file.

### [Twitter](https://github.com/jnunemaker/twitter)

* Run the rake task 'rake twitter'
* Open the file `lib/twitterapi.rb`

The code example shows that it is fairly trivial to perform a search. None of that requires you to set up a developer account and set up an application.

* Try first showing more information in the output.
* Try creating a system that shows you only the tweets for a different hashtag or different criteria.
* Try showing only tweets where the user has a number of followers that you would say makes them 'trustworthy'.

### [Craigslist](https://github.com/threetrieslater/craigler)

* Run the rake task 'rake craigslist'
* Open the file `lib/craigslist.rb`

Again, it's fairly easy to search for information fairly quickly.

NOTE: The results from a search is a Hash and not exactly as the documentation on Github describes it.

* Try creating a search that you might use.
* Try creating output that includes more useful information (e.g. link,cost,).
* Try excluding words or posts older than a certain amount of time

### Git

Still not feeling confident about git? Not to worry, you are not alone. But then again, graph theory (and Git) can be easily explained using Tinker Toys! Watch this video for an amusing yet accurate look at how git actually works. It's far simpler than it appears.

[Git For Ages 4 and Up|http://blip.tv/open-source-developers-conference/git-for-ages-4-and-up-4460524]
