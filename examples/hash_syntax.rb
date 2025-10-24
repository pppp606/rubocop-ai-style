# frozen_string_literal: true

# Style/HashSyntax: EnforcedStyle: ruby19
# AI-first rationale: Modern syntax is widely represented in AI training data.

# ✓ GOOD: Ruby 1.9+ hash syntax with symbol keys
user = {
  name: "Alice",
  email: "alice@example.com",
  age: 30,
  active: true
}

# ✓ GOOD: Consistent modern syntax for nested hashes
configuration = {
  database: {
    host: "localhost",
    port: 5432,
    username: "admin"
  },
  cache: {
    enabled: true,
    ttl: 3600
  }
}

# ✓ GOOD: String keys still use hash rocket (different key type)
headers = {
  "Content-Type" => "application/json",
  "Authorization" => "Bearer token123"
}

# ✗ BAD: Old hash rocket syntax with symbol keys
# user = {
#   :name => "Alice",
#   :email => "alice@example.com",
#   :age => 30
# }

# Modern syntax is:
# 1. More common in recent Ruby codebases
# 2. Better represented in AI training data
# 3. More concise and readable for both AI and humans

# Mixed key types use appropriate syntax for each
mixed = {
  symbol_key: "value1",
  "string_key" => "value2"
}

# Method calls with keyword arguments align with hash syntax
def configure(host:, port:, ssl:)
  { host: host, port: port, ssl: ssl }
end

result = configure(host: "localhost", port: 443, ssl: true)

# Using the variables (to avoid Lint/UselessAssignment)
puts user.inspect
puts configuration.inspect
puts headers.inspect
puts mixed.inspect
puts result.inspect
