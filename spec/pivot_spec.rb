require 'spec_helper'
require_relative '../pivot'

describe Pivot do
  let(:pivot) { Pivot.new }

  describe '#pivot_index' do
    it 'should return the middle one when the array is [1,4,6,3,2]' do
      pivot.pivot_index([1,4,6,3,2]).should == 2
    end

    it "should return the second one when the array is [9,4,3,3,3]" do
      pivot.pivot_index([9,4,3,3,3]).should == 1
    end

    it "should return -1 when there is no pivot index" do
      pivot.pivot_index([1,2,4,8,3]).should == -1
    end

    it "should return 0 when  the array is [3]" do
      pivot.pivot_index([3]).should == -1
    end

    it "should return -1 when the array is empty" do
      pivot.pivot_index([]).should == -1
    end

    it "should return -1 when the array has only 2 elements" do
      pivot.pivot_index([1,5]).should == -1
    end

    it "should return the first pivot when there are multiple pivots [5,2,0,0,3,4]" do
      pivot.pivot_index([5,2,0,0,3,4]).should == 2
    end
  end
end
