# frozen_string_literal: true

# Style/ExplicitBlockArgument: Enabled: true
# AI-first rationale: Always name block args explicitly (&block).
# Helps AI maintain call structure and understand block flow.

# ✓ GOOD: Explicit block argument
def process_items(items, &block)
  items.map(&block)
end

result = process_items([1, 2, 3]) { |n| n * 2 }

# ✓ GOOD: Explicit forwarding of blocks
def with_logging(message, &block)
  puts "Starting: #{message}"
  result = block.call
  puts "Finished: #{message}"
  result
end

with_logging("data processing") { 42 }

# ✓ GOOD: Explicit block argument makes yield target clear
def repeat(times, &block)
  times.times { block.call }
end

repeat(3) { puts "Hello" }

# ✗ BAD: Implicit block with yield is less clear for AI
# def process_items(items)
#   items.map { |item| yield(item) }
# end

# AI can better track block arguments when they are explicitly named
def conditional_execute(condition, &block)
  block.call if condition
end

conditional_execute(true) { puts "Executed!" }

# Explicit block arguments improve AI understanding of higher-order functions
def retry_on_error(max_attempts:, &block)
  attempts = 0
  begin
    attempts += 1
    block.call
  rescue StandardError => e
    retry if attempts < max_attempts
    raise e
  end
end

retry_on_error(max_attempts: 3) { puts "Attempting operation" }

# Using the variables and functions (to avoid Lint/UselessAssignment)
puts result.inspect
