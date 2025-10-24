# frozen_string_literal: true

# Style/KeywordArguments: EnforcedStyle: required
# AI-first rationale: Enforce keyword args for clarity.
# AI can infer meaning from names rather than position.
# → reconsider? adds verbosity for short helpers.

# ✓ GOOD: Keyword arguments make intent explicit
def create_user(name:, email:, age:)
  { name: name, email: email, age: age }
end

# Call site is self-documenting for AI
user = create_user(name: "Alice", email: "alice@example.com", age: 30)

# ✓ GOOD: Optional keyword arguments with defaults
def send_notification(recipient:, message:, priority: "normal", retry_count: 3)
  "Sending #{priority} message '#{message}' to #{recipient} (retry: #{retry_count})"
end

send_notification(recipient: "user@example.com", message: "Hello", priority: "high")

# ✗ BAD: Positional arguments are less clear for AI
# def create_user(name, email, age)
#   { name: name, email: email, age: age }
# end
#
# user = create_user("Alice", "alice@example.com", 30)  # What do these values represent?

# AI can better understand and generate correct calls with keyword arguments
def configure_service(endpoint:, timeout:, retries:, ssl_verify:)
  "Configuring service: endpoint=#{endpoint}, timeout=#{timeout}s, retries=#{retries}, ssl_verify=#{ssl_verify}"
end

service_config = configure_service(
  endpoint: "https://api.example.com",
  timeout: 30,
  retries: 3,
  ssl_verify: true
)

# Using the variables (to avoid Lint/UselessAssignment)
puts user.inspect
puts service_config
