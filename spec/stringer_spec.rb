# frozen_string_literal: true
require "spec_helper"
RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it 'concatenates undefined number of strings with a space' do
	expect(Stringer.spacify "Oscar","Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end
  context 'Minify string' do
  	it 'shorten the string if it exceeds the max length' do
            expect(Stringer.minify "Hello, I am learning how to create a gem", 10).to eq("Hello, I am..")	
        end
        
        it 'display text if not exceeds the max length' do
       		expect(Stringer.minify "Ivan", 10).to eq("Ivan")
	end
  end
  context 'replacify string' do 
  	it 'replace original string with new string' do
       		expect(Stringer.replacify "I cant do it","cant","can").to eq("I can do it")
	end
  end

  it 'tokenize string' do
	expect(Stringer.tokenize "I love to code").to eq(["I","love","to","code"])
  end

  it 'removify string' do
  	expect(Stringer.removify "I am not a developer", "not").to eq("I am a developer")	 
  end  
end
