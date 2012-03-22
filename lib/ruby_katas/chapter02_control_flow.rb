# Copyright 2012 Doug Ireton

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Control Flow in Ruby
#
# You will need to read about Ruby's control flow/conditionals to complete
# these exercises. This is a good reference:
# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Control_Structures#Conditional_Branches
module Chapter02

  class << self
    ##
    # A kata to learn how to use simple "if" statements
    #
    # @param [Fixnum] n number to evaluate
    # @return [Fixnum, NilClass] 1 if n == 1.
    #   If you don't explicitly return a value in a method, it will return nil.
    #
    # @note In Ruby, the "then" statement isn't usually used, so just "if", not "if ... then"
    #   Also, notice that parenthesis around the condition, e.g. "n == 1" are optional
    #   and usually omitted in Ruby
    #
    def simple_if(n)

      # TODO: use a simple "if ... end" structure here
      # if n == 1, return n

    end


    # Learn how to use if/else in Ruby
    #
    # @param [Fixnum] n number to evaluate
    # @return [String] "even" if n is even, else return "odd"
    #
    # @note You will probably need to use the modulo operator to determine if
    #   n is even
    # @see http://en.wikibooks.org/wiki/Ruby_Programming/Reference/Objects/Numeric
    #     Description of modulo (%) operator
    def odd_even(n)

      # TODO: Insert if...else...end here to test if n is even or odd

    end


    # Learn how to use if/elsif/else
    #
    # @param [String] style Style of beer, e.g. "amber", "porter", "pilsner"
    # @return [String] Name of beer in the style requested, e.g. "Manny's Pale Ale"
    #
    # @example
    #   recommend_beer("amber")
    #   #=> "Manny's Pale Ale"
    #
    #   recommend_beer('porter')
    #   #=> "Black Butte Porter"
    #
    # @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Control_Structures#if-elsif-else_expression
    #   Description of if/elsif/else expression
    def recommend_beer(style)

      # TODO: Insert if...elsif...else...end here to return the correct type of beer
    end


    # Learn how to use Ruby's Case statement
    #
    # The recommend_beer method might be better written using a Case statement instead of a
    # big if/elsif/else statement.
    # Rewrite it using Ruby's Case statement
    #
    # @param [String] style Style of beer, e.g. "amber", "porter", "pilsner"
    # @return [String] Name of beer in the style requested, e.g. "Manny's Pale Ale"
    #
    # @example
    #   recommend_beer2("amber")
    #   #=> "Manny's Pale Ale"
    #
    #   recommend_beer2('porter')
    #   #=> "Black Butte Porter"
    #
    # @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Control_Structures#case_expression
    #   Description of Ruby Case expression
    def recommend_beer2(style)

      # TODO: Insert case statement here to return the correct type of beer
      # Use the "more concise syntax" from the link above
      case style
        when "amber" then "__"
        else ""
      end
    end

  end
end

# RSpec Tests
describe Chapter02 do

  describe "simple_if" do

    it "returns 1 if n == 1" do
      Chapter02.simple_if(1).should eq(1)
    end

    it "returns nil if n does not equal 1" do
      Chapter02.simple_if(0).should be_nil
    end
  end


  describe "if/else (odd_even)" do

    it "returns 'even' for 2" do
      Chapter02.odd_even(2).should eq("even")
    end

    it "returns 'odd' for 3" do
      Chapter02.odd_even(3).should eq("odd")
    end
  end


  describe "if/elsif/else (recommend_beer)" do

    it "returns 'Manny's Pale Ale' for amber" do
      Chapter02.recommend_beer('amber').should eq("Manny's Pale Ale")
    end

    it "returns 'Black Butte Porter' for porter" do
      Chapter02.recommend_beer('porter').should eq('Black Butte Porter')
    end

    it "returns 'Pilsner Urquell' for pilsner" do
      Chapter02.recommend_beer('pilsner').should eq('Pilsner Urquel')
    end

    it "returns 'Pabst Blue Ribbon' for anything else" do
      Chapter02.recommend_beer('light').should eq('Pabst Blue Ribbon')
      Chapter02.recommend_beer(42).should eq('Pabst Blue Ribbon')
      Chapter02.recommend_beer.should eq('Pabst Blue Ribbon')
    end

  end


  describe "case statement (recommend_beer2)" do

    it "returns 'Manny's Pale Ale' for amber" do
      Chapter02.recommend_beer2('amber').should eq("Manny's Pale Ale")
    end

    it "returns 'Black Butte Porter' for porter" do
      Chapter02.recommend_beer2('porter').should eq('Black Butte Porter')
    end

    it "returns 'Pilsner Urquell' for pilsner" do
      Chapter02.recommend_beer2('pilsner').should eq('Pilsner Urquel')
    end

    it "returns 'Pabst Blue Ribbon' for anything else" do
      Chapter02.recommend_beer2('light').should eq('Pabst Blue Ribbon')
      Chapter02.recommend_beer2(42).should eq('Pabst Blue Ribbon')
      Chapter02.recommend_beer2.should eq('Pabst Blue Ribbon')
    end

  end

end
