require 'spec_helper'

describe StandardDeviation do

  subject { [5,10,15,20,25] }

  it 'has a version number' do
    expect(StandardDeviation::VERSION).not_to be nil
  end

  it 'calculates standard deviation' do
    expect(subject.standard_deviation).to eq(7.905694150420948)
    expect(subject.std_dev).to eq(7.905694150420948)
  end

  it 'calculates sample variance' do
    expect(subject.sample_variance).to eq(62.5)
  end

  it 'calculates maximum standard deviation' do
    expect(subject.max_standard_deviation).to eq(22.90569415042095)
    expect(subject.max_std_dev).to eq(22.90569415042095)
  end

  it 'calculates minimum standard deviation' do
    expect(subject.min_standard_deviation).to eq(7.094305849579052)
    expect(subject.min_std_dev).to eq(7.094305849579052)
  end
end
