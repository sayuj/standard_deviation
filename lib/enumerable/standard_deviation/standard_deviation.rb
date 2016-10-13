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
  alias_method :std_dev, :standard_deviation

  def max_standard_deviation
    mean + standard_deviation
  end
  alias_method :max_std_dev, :max_standard_deviation

  def min_standard_deviation
    mean - standard_deviation
  end
  alias_method :min_std_dev, :min_standard_deviation
end
