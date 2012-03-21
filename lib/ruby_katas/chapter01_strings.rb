# Copyright 2012 Doug Ireton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# <http://www.apache.org/licenses/LICENSE-2.0>
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Chapter One
# "Hello, world!" is the classic first programming exercise for most
# programming books so we'll start there in this chapter.
#
# `hello_world` is a Ruby _method_. In an object-oriented language like Ruby,
# _methods_ are the language's verbs. They do things, like print a file, or
# multiply two numbers, or move your spaceship.
#
# In this case, `hello_world` is a method which should return the _String_
# "Hello, world!"
module Chapter01

  class << self

    # 'Hello, world!' in Ruby
    #
    # Examples
    #
    #     hello_world
    #     # => 'Hello, world!'
    #
    # Returns the String "Hello, world!"
    def hello_world

      # TODO:
      # Change the double underscore so this method returns 'Hello, world!'
      return 'Hello, __'
    end


    # Hello, name
    #
    # name - The name of the person you want to say hello to as a String.
    #
    # Examples
    #
    #     hello_name('Bob')
    #     # => 'Hello Bob'
    #
    # Returns the String "Hello `name`".
    def hello_name(name)

      # TODO:
      # Replace the blank space between the braces, with the method parameter
      # `name`. Ruby has string interpolation, as in other languages.
      return "Hello #{ }"
    end


    # Reverse a string
    #
    # string - String you want reversed
    #
    # Examples
    #
    #     string_reverse('stressed')
    #     # => 'desserts'
    #
    # Returns the String reversed
    def string_reverse(string)

      # TODO:
      # Reverse `string` using Ruby's built-in [String#reverse][] method
      # [String#reverse]: http://ruby-doc.org/core-1.9.3/String.html#method-i-reverse
    end


    # Multiply a string
    #
    # string - string to multiply
    # n - multiply string by this number
    #
    # Examples
    #
    #   string_multiply("foo", 3)
    #     # => 'foofoofoo'
    #
    # Returns a new string with `n` copies of the string concatenated together
    def string_multiply(string, n)

      # TODO:
      # Use [Ruby's String#Copy method](http://www.ruby-doc.org/core-1.9.3/String.html#method-i-2A),
      # to complete this method.

    end


    # Downcase and hyphenate a string
    #
    # string_to_hyphenate -  string to downcase and hyphenate
    #
    # For a more complete implementation, see
    # [Rails' ActiveSupport Parameterize method](http://rubydoc.info/gems/activesupport/3.1.3/ActiveSupport/Inflector:parameterize)
    #
    # Example
    #   hyphenate('  My dog has   fleas  ')
    #   #=> 'my-dog-has-fleas'
    #
    # Returns a new hyphenated string
    def hyphenate(string_to_hyphenate)

      # TODO:
      # You will need to use several methods in Ruby's String class
      # to accomplish your goal. See http://www.ruby-doc.org/core-1.9.3/String.html
      # You will need to do the following:
      #
      # 1. Strip leading and trailing whitespace
      # 2. Replace multiple spaces in the middle of a string with
      # a single hyphen
      #
      # You can do it all on one line by chaining methods together
      # like this: string_to_hyphenate.foo.bar(' ').baz

    end
  end
end


# Opening a built-in Class
# Open Ruby's built-in String class and add the hyphenate method
# Since Ruby has open classes, you can add methods even to built-in classes
class String

  # self - string to hyphenate
  #
  # Examples
  #
  #   'My string'.hyphenate
  #     # => 'my-string'
  #
  # Returns a new hyphenated string
  def hyphenate

    # TODO:
    # Notice that the hyphenate method doesn't use any parameters
    # The string you are trying to hyphenate will be passed as "self"
    # Therefore, instead of string_to_hyphenate.foo.bar(' ').baz,
    # you would type this: self.foo.bar(' ').baz
    #
    # Then you would call your custom String instance method like this:
    # 'My string'.hyphenate

  end
end


# RSpec Tests
describe Chapter01 do

  # Hello World
  describe '.hello_world' do
    it "retuns 'Hello, world!'" do
      Chapter01.hello_world.should eq('Hello, world!')
    end
  end

  # Hello, name
  describe '.hello_name' do
    it "says 'Hello <name>'" do
      Chapter01.hello_name('Doug').should eq('Hello Doug')
    end
  end

  # Reverse a string
  describe '.string_reverse' do
    it 'reverses a string' do
      Chapter01.string_reverse('stressed').should eq('desserts')
    end
  end

  # Multiply a string
  describe '.string_multiply' do
    it 'returns a new string with n copies concatenated together' do
      Chapter01.string_multiply('A', 5).should eq('AAAAA')
    end

    it 'returns an empty string when n == 0' do
      Chapter01.string_multiply('A', 0).should eq('')
    end

    it 'throws an ArgumentError when n < 0' do
      expect { Chapter01.string_multiply('A', -1 ) }.to raise_error(ArgumentError)
    end

    it 'thows a TypeError when n is not a number' do
      expect { Chapter01.string_multiply('A', 'bar') }.to raise_error(TypeError)
    end
  end

  # Hyphenate and downcase a string
  describe '.hyphenate' do

    it 'hyphenates and downcases a string' do
      Chapter01.hyphenate('  My dog has   fleas  ').should eq('my-dog-has-fleas')
    end

    it "doesn't hyphenate single words" do
      Chapter01.hyphenate('single').should eq('single')
    end

    it "doesn't hyphenate single words with whitespace" do
      Chapter01.hyphenate('  single ').should eq('single')
    end

    it 'returns an empty string if you pass in a string containing only spaces' do
      Chapter01.hyphenate('   ').should eq('')
    end
  end
end


# Test Ruby's built-in String class
describe String do

  # Test our added hyphenate method
  describe '#hyphenate' do

    it 'hyphenates and downcases a string' do
      '  My dog has   fleas  '.hyphenate.should eq('my-dog-has-fleas')
    end

    it "doesn't hyphenate single words" do
      'single'.hyphenate.should eq('single')
    end

    it "doesn't hyphenate single words with whitespace" do
      '  single '.hyphenate.should eq('single')
    end

    it 'returns an empty string if you pass in a string containing only spaces' do
      '   '.hyphenate.should eq('')
    end
  end
end
