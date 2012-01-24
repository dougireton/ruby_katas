# Copyright 2011 Doug Ireton

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Chapter 1
module Chapter01

  class << self
    # 'Hello, world!' in Ruby
    #
    # @return [String] 'Hello, world!'
    def hello_world

      # Change the double umnderscore so this method returns 'Hello, world!'
      return 'Hello, __'
    end


    # Hello, name
    #
    # @param [String] name 
    #   name of the person you want to say hello to
    #
    # @return [String] 'Hello name'
    #
    # @example
    #   hello_name('Bob')
    #   #=> 'Hello Bob'
    def hello_name(name)

      # Replace the blank space between the braces, with the method parameter 'name'
      # Ruby has string interpolation, as in other languages
      return "Hello #{ }"
    end


    #Reverse a string
    #
    # @param [String] string you want reversed
    # @return [String] the string reversed
    def string_reverse(string)

      # see http://ruby-doc.org/core-1.9.3/String.html#method-i-reverse
    end


    # Multiply a string
    #
    # @param [String] string to multiply
    # @param [integer] n multiply string by this number
    # @return [String] a new string with n copies of the string concatenated together
    def string_multiply(string, n)

      # see http://www.ruby-doc.org/core-1.9.3/String.html#method-i-2A
    end


    # Downcase and hyphenate a string
    #
    # @param [String] string string to hyphenate
    # @return [String] a new hyphenated string
    #
    # @see http://rubydoc.info/gems/activesupport/3.1.3/ActiveSupport/Inflector:parameterize
    #   A more complete implementation, called parameterize, in Rails ActiveSupport
    #
    # @example
    #   hyphenate('  My dog has   fleas  ')
    #   #=> 'my-dog-has-fleas'
    def hyphenate(string_to_hyphenate)

      # You will need to use several methods in Ruby's String class
      # to accomplish your goal. See http://www.ruby-doc.org/core-1.9.3/String.html
      # You will need to do the following:
      # Strip leading and trailing whitespace
      # Replace multiple spaces in the middle of a string with
      # a single hyphen
      #
      # You can do it all on one line by chaining methods together
      # like this: string_to_hyphenate.foo.bar(' ').baz

    end
  end
end


# Open the Ruby built-in String class and add the hyphenate method
# Since Ruby has open classes, you can add methods even to built-in classes
#
class String

  # @param [String] string to hyphenzate
  # @return [String] a new hyphenated string
  def hyphenate

    # Notice that the hyphenate method doesn't use any parameters
    # The string you are trying to hyphenate will be passed as "self"
    # Therefore, instead of string_to_hyphenate.foo.bar(' ').baz,
    # you would type this: self.foo.bar(' ').baz
    #
    # Then you would call your custom String instance method like this:
    # 'My string'.hyphenate

  end
end


describe Chapter01 do

  describe '.hello_world' do
    it "retuns 'Hello, world!'" do
      Chapter01.hello_world.should eq('Hello, world!')
    end
  end


  describe '.hello_name' do
    it "says 'Hello <name>'" do
      Chapter01.hello_name('Doug').should eq('Hello Doug')
    end
  end


  describe '.string_reverse' do
    it 'reverses a string' do
      Chapter01.string_reverse('stressed').should eq('desserts')
    end
  end


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



describe String do

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