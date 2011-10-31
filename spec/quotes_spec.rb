require_relative 'spec_helper'


describe Quotes do
    
  subject { Quotes.new :file => TEXT_FILE }
  
  describe "#file" do
    
    it "should return the filename" do
      subject.file.should == TEXT_FILE
    end
    
  end
  
  describe "#all", "#quotes" do
    
    it "should return all the quotes" do
      subject.all.should_not be_empty
      subject.quotes.should_not be_empty
    end
    
  end
  
  describe "#[]", "#find" do

    context "when the file does not exist" do

      subject { Quotes.new :file => "FILE_DOES_NOT_EXIST" }

      it "should return an empty list of results" do
        subject[3].should == "Could not find a quote at this time"
        subject.find(3).should == "Could not find a quote at this time"
      end

    end

    context "when the file exists" do

      context "when a single line has been specified" do

        it "should return the correct value at the specified line" do
          subject[1].should == "The dude abides"
          subject.find(1).should == "The dude abides"
        end

        context "when the line specified is greater than the number of quotes" do

          it "should return any quote" do
            subject[999].should_not be_nil
            subject.find(999).should_not be_nil
          end

        end

      end

    end

  end
  
  describe "#search" do
    
    context "when the file does not exist" do

      subject { Quotes.new :file => "FILE_DOES_NOT_EXIST" }

      it "should return an empty list of results" do
        subject.search(:start_with => "The").should be_empty
      end

    end

    context "when the file does exist" do

      context "when no search criteria has been specified" do

        it "should return all quotes" do
          subject.search.should_not be_empty
        end

      end

      context "when search criteria has been specified" do

        describe "contains" do

          it "should return all the quotes that contain the criteria" do
            results = subject.search(:include => "dude")
            results.should have(3).items
          end

        end

        describe "starts with" do

          it "should return all the quotes that contain the criteria" do
            results = subject.search(:start_with => "Her")

            results.should have(1).items
            results.first.should == "Her life is in your hands dude"
          end

        end

        describe "ends with" do

          it "should return all the quotes that contain the criteria" do
            results = subject.search(:end_with => "dude")

            results.should have(2).items
            results.should == [ 'Calmer than you are dude', 'Her life is in your hands dude' ]

          end

        end
      end

    end
    
  end
  
  describe "Class Methods" do
    
    describe "::load" do
      
      it "should create a quotes objects with a file" do
        quotes = Quotes.load(TEXT_FILE)
        quotes.all.should_not be_empty
      end
      
    end
    
    describe "::missing_quote" do
      
      
      it "should allow you to set the message when a quote is missing" do
        
        expected_quote = "All of our quotes have gone missing"
        
        Quotes.missing_quote = expected_quote
        
        quotes = Quotes.load("FILE_DOES_NOT_EXIST")
        quotes[3].should == expected_quote
        
      end
      
      
    end
    
    
  end
  
end