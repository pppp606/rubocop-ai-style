# frozen_string_literal: true

# Style/TrailingCommaInArrayLiteral: Enabled: false
# Style/TrailingCommaInHashLiteral: Enabled: false
# AI-first rationale: Trailing commas are syntactic noise for most LLMs.

# ✓ ALLOWED: No trailing comma (simpler for AI)
colors = [
  "red",
  "green",
  "blue"
]

# ✓ ALLOWED: No trailing comma in hashes
user = {
  name: "Alice",
  email: "alice@example.com",
  age: 30
}

# ✓ ALSO ALLOWED: With trailing comma (not enforced either way)
fruits = [
  "apple",
  "banana",
  "orange",
]

# ✓ ALSO ALLOWED: Hash with trailing comma
config = {
  host: "localhost",
  port: 5432,
  ssl: true,
}

# AI-first reasoning:
# - Trailing commas help with git diffs (human benefit)
# - But they add token overhead for AI parsing
# - Not enforcing either way gives flexibility

# Multi-line array without trailing comma
statuses = [
  :pending,
  :active,
  :completed
]

# Multi-line hash without trailing comma
settings = {
  timeout: 30,
  retries: 3,
  log_level: "info"
}

# Nested structures - trailing commas optional
nested = {
  users: [
    { name: "Alice", role: "admin" },
    { name: "Bob", role: "user" }
  ],
  settings: {
    theme: "dark",
    language: "en"
  }
}

# Using the variables (to avoid Lint/UselessAssignment)
puts colors.inspect
puts user.inspect
puts fruits.inspect
puts config.inspect
puts statuses.inspect
puts settings.inspect
puts nested.inspect
