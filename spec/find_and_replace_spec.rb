require 'rspec'
require 'find_and_replace'

describe 'String#find_and_replace' do
  it 'takes two arguments and replaces all instances of first argument in the string with second argument' do
    expect("I don't have a cat".find_and_replace('cat', 'dog')). to eq("I don't have a dog")
  end
end
