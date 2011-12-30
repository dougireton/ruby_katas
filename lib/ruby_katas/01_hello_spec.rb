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


__ = ""

# Hello, world in Ruby
#
# @return [String] Hello, world!
def hello_world

  # Change the double umnderscore so this method returns "Hello, world!"
  return "Hello, __"
end

describe "#hello_world" do
  it "retuns 'Hello, world!'" do
    hello_world.should eq("Hello, world!")
  end
end


# Hello, <name>
#
# @param [string] name of the person you want to say hello to
# @return [string] "Hello <name>"
def hello_name(name)

  # Replace the blank lines between the braces with the method parameter 'name'
  # Ruby has string interpolation, as in other languages
  return "Hello #{ }"
end

describe "#hello_name" do
  it "says 'Hello <name>'" do
    hello_name("Doug").should eq("Hello Doug")
  end
end


# Reverse a string
#
# @param [string] string you want reversed
# @return [string] the string reversed
def string_reverse(string)

  # see http://ruby-doc.org/core-1.9.3/String.html#method-i-reverse

end

describe "#string_reverse" do
  it "reverses a string" do
    string_reverse("stressed").should eq("desserts")
  end
end

# Multiply a string
#
# @param [string] string to multiply
# @param [integer] n multiply string by this number
# @return [string] a new string with n copies of the string concatenated together
def string_multiply(string, n)

  # see http://www.ruby-doc.org/core-1.9.3/String.html#method-i-2A

end

describe "#string_multiply" do
  it "returns a new string with n copies concatenated together" do
    string_multiply("A", 5).should eq("AAAAA")
  end

  it "returns an empty string when n == 0" do
    string_multiply("A", 0).should eq("")
  end

  it "throws an ArgumentError when n < 0" do
    expect { string_multiply( A, -1 )}.to raise_error(ArgumentError)
  end
end
