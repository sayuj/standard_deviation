require 'spec_helper'

describe StandardDeviation do
  it 'has a version number' do
    expect(StandardDeviation::VERSION).not_to be nil
  end

  it 'calculates standard deviation' do
    expect([5,10,15,20,25].standard_deviation).to eq(7.905694150420948)
  end

  it 'calculates sample variance' do
    expect([5,10,15,20,25].sample_variance).to eq(62.5)
  end
end
