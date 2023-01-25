require 'benchmark'


def aping_bpong
  (1..100).map do |num|
    aping = (num % 3).zero?
    bpong = (num % 5).zero?
    if aping && bpong
      'APingBPong'
    elsif aping
      'APing'
    elsif bpong
      'BPong'
    else
      num
    end
  end
end

# @param {Integer} n
# @return {String[]}
def fizz_buzz
  1.upto(100).map { |integer| [[('APing' if (integer % 3).zero?), ('BPong' if (integer % 5).zero?)].compact.join, integer.to_s].max_by(&:length) }
end

# puts aping_bpong

# puts Benchmark.measure {
#   50_000.times do
#     fizz_buzz(100)
#   end
# }

Benchmark.bm do |benchmark|
  benchmark.report("FizzBuzz") do
    fizz_buzz
  end

  benchmark.report('apingbpong') do
    aping_bpong
  end
end
