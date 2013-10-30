# Code Jams
* Pick a day and pick a topic.
* Gather people.
* Gather food and snacks.
* Have fun!
* Recommendation: Start with a code retreat

---

## Code Retreat Core Concepts
* 45 minutes of pairing TDD on Conway's Game of Life
* 15 minutes of meta conversation
* Rotate partners
* Code should be considered "throw away"

### Reasons to do a Code Retreat style event
* More professional experience outside of coursework
* Chance to practice your skills
* Chance to teach/learn
* More "ah ha!" moments

---

## Useful tools for a Code Retreat

### Tool: Git
* Most useful workflow you'll gain up front:

```bash
$ git init
$ git add .
$ git commit -am "this code does x"
$ git status
$ git diff
```

* [Git Immersion - Brought to you by Neo](http://gitimmersion.com/)
* [Git Docs](http://git-scm.com/)

#### Reasons to use Git
* Less "Oh no I lost everything"
* Less "I just want to get back to when my code worked"
* Less copy paste rename "snapshots"
* Less fear of experimentation
* More obvious what changed
* More recovering from mistakes quickly

---

### Tool: Pair Programming
* 1 driver
* 1 navigator
* 2 keyboards and mice
* Switch regularly
  * Use a clock - [Pomodoro!](http://tomatoi.st/) is pretty useful for 5-10 minute intervals
  * Write a test, switch, implement, write a test, switch
* Play nice :-)
* Teach/learn

#### Reasons to Pair Program
* :-/ "I'd rather just work alone, I work better that way"
* :-( "Ughhhhh, I've been stuck for 4 hours"
* :-) "Let's talk this out"

---

### Tool: TDD
* Write tests first
* Use framework for the language you want to use
  * Ruby - [RSpec.info: home](http://rspec.info/)
  * Java - [JUnit](http://junit.org/)
  * JS - [introduction-1.3.1.js](http://pivotal.github.io/jasmine/)
  * C++ - [Primer - googletest - Getting started with Google C++ Testing Framework - Google C++ Testing Framework - Google Project Hosting](https://code.google.com/p/googletest/wiki/Primer)
* Explore behavior at a low level
* Build confidence in your implementation
* Avoid slow/painful setup to test behavior
* Minimalist sample for ruby:

```bash
$ gem install rspec
$ cd path/to/project
$ rspec --init
$ rspec
```

```ruby
describe ObjectUnderTest do
  describe '#function_under_test' do
    it 'has some behavior' do
      # assert here
      expect(1+1).to eq(2)
    end
  end
end
```

#### Reasons to use TDD
* Less "Why isn't this working the way I want?!"
* Less print everything and rerun the application
* Less stepping through with debugger blindly
* More "Let's test just this one part and verify our assumptions"

---

## Further ideas to jam on

### Try these first
* Code Retreat - [Coderetreat - Honing the craft together worldwide](http://coderetreat.org/)
* Simple Web Apps - [ZachBeta/ruby_newbie](https://github.com/ZachBeta/ruby_newbie)
* Project Euler - [Project Euler](http://projecteuler.net/)

### Try these later
* Sponsored Hackathons locally or elsewhere
* Startup Weekend events - [Startup Weekend Upcoming Events | Startup Weekend](http://startupweekend.org/events/)
* Programming Koans
  * [Learn a New Programming Language Today with Koans - Laura Diane Hamilton](http://www.lauradhamilton.com/learn-a-new-programming-language-today-with-koans)
  * Ruby - [neo/ruby_koans](https://github.com/neo/ruby_koans)
  * JS - [mrdavidlaing/javascript-koans](https://github.com/mrdavidlaing/javascript-koans)
  * Java - [matyb/java-koans](https://github.com/matyb/java-koans)
  * Break the Koans
    * Try modifying the test runner to pass without changing the koans
* Katas - [CodeKata](http://codekata.pragprog.com/codekata/)
* Contributing to OSS
  * Document Ruby - [ruby/ruby](https://github.com/ruby/ruby) / [Contributing to Ruby's Documentation - Literate Programming](http://blog.steveklabnik.com/posts/2011-05-10-contributing-to-ruby-s-documentation)
* Twitter Clone in Rails - [Learn Web Development with the Ruby on Rails Tutorial](http://ruby.railstutorial.org/ruby-on-rails-tutorial-book)
* Pair on any problem you'd like to explore
  * Share it on github/twitter
  * Make it fun

---

# Happy Hacking!
