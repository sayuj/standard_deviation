require 'enumerable/standard_deviation/version'

module Enumerable
  def sum
    inject(0){|sum, i| sum + i }
  end

  def mean
    sum / length.to_f
  end

  def sample_variance
    m = mean
    sum = inject(0){|sum, i| sum + (i - m) ** 2 }
    sum / (length - 1).to_f
  end

  def standard_deviation
    Math.sqrt(sample_variance)
  end
end
