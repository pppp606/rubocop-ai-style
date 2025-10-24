# frozen_string_literal: true

# Style/StringLiterals: EnforcedStyle: double_quotes
# AI-first rationale: Consistency in string literals helps AI pattern recognition.
# → reconsider? single_quotes reduce escaping noise.

# ✓ GOOD: Double quotes (enforced)
greeting = "Hello, World!"
message = "Welcome to AI-first Ruby style"
path = "/home/user/documents"

# ✗ BAD: Single quotes (would trigger offense)
# greeting = 'Hello, World!'
# message = 'Welcome to AI-first Ruby style'
# path = '/home/user/documents'

# Double quotes allow interpolation without changing quote style
name = "Alice"
personalized_greeting = "Hello, #{name}!"

# Consistent quote style reduces tokenization variance for AI models
def process_data(input)
  "Processing: #{input}"
end

# Using the variables (to avoid Lint/UselessAssignment)
puts greeting
puts message
puts path
puts personalized_greeting
puts process_data("test")
