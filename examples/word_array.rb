# frozen_string_literal: true

# Style/WordArray: Enabled: false
# AI-first rationale: %w/%i reduce verbosity but hide literal types.
# Explicit arrays are clearer for AI tokenization.

# ✓ GOOD: Explicit string arrays (AI-friendly)
colors = ["red", "green", "blue", "yellow"]
fruits = ["apple", "banana", "orange"]
commands = ["start", "stop", "restart", "status"]

# Explicit syntax makes element type obvious to AI
def valid_statuses
  ["pending", "active", "completed", "cancelled"]
end

# AI can easily recognize patterns and element types
SUPPORTED_FORMATS = ["json", "xml", "csv", "yaml"].freeze
ALLOWED_METHODS = ["GET", "POST", "PUT", "DELETE"].freeze

# ✗ DISCOURAGED: %w syntax is more compact but less explicit
# colors = %w[red green blue yellow]
# fruits = %w[apple banana orange]
# commands = %w[start stop restart status]

# Explicit arrays help AI understand:
# 1. Element type (strings vs symbols)
# 2. Array boundaries
# 3. Individual elements without special syntax knowledge

# Mixed content is clearer with explicit syntax
options = ["option-one", "option_two", "option-3"]

# Multiline explicit arrays maintain clarity
configuration_keys = [
  "api_endpoint",
  "timeout",
  "retry_count",
  "ssl_verify",
  "log_level"
]

# Using the variables (to avoid Lint/UselessAssignment)
puts colors.inspect
puts fruits.inspect
puts commands.inspect
puts options.inspect
puts configuration_keys.inspect
puts valid_statuses.inspect
