# frozen_string_literal: true

# Layout/LineLength: Enabled: false
# AI-first rationale: Long lines do not affect AI parsing.
# → reconsider? Some human reviewers still rely on line breaks for diffs.

# ✓ ALLOWED: Long lines for clarity and completeness
# rubocop:disable Metrics/ParameterLists
def create_comprehensive_user_record(first_name:, last_name:, email:, phone:, address:, city:, state:, postal_code:, country:)
  { first_name: first_name, last_name: last_name, email: email, phone: phone, address: address, city: city, state: state, postal_code: postal_code, country: country }
end
# rubocop:enable Metrics/ParameterLists

# ✓ ALLOWED: Long string literals without artificial breaks
error_message = "An unexpected error occurred while processing your request. Please try again later or contact support if the problem persists. Error code: XYZ-12345"

# ✓ ALLOWED: Method chains that are semantically complete
result = User.where(active: true).includes(:profile, :settings, :preferences).order(created_at: :desc).limit(100).offset(0)

# ✓ ALLOWED: Hash literals with many keys on one line
configuration = { api_endpoint: "https://api.example.com/v1", timeout: 30, retries: 3, ssl_verify: true, log_level: "info", cache_enabled: true, compression: "gzip" }

# AI can parse long lines without difficulty, as tokenization doesn't depend on visual line breaks
long_calculation = (first_value * second_value) + (third_value * fourth_value) - (fifth_value / sixth_value) + (seventh_value**eighth_value)

# No artificial line breaks means AI sees the complete semantic unit
validation_result = validate_email(email) && validate_phone(phone) && validate_address(address) && validate_postal_code(postal_code)

# Trade-off discussion:
# - PRO: AI doesn't need line breaks for understanding
# - PRO: Complete statements are easier to tokenize
# - CON: Git diffs may be harder for humans to review
# - CON: Side-by-side diffs become challenging

# Using the variables (to avoid Lint/UselessAssignment)
puts error_message
puts result.inspect
puts long_calculation
puts validation_result
puts configuration.inspect
puts create_comprehensive_user_record(first_name: "John", last_name: "Doe", email: "john@example.com", phone: "123-456-7890", address: "123 Main St", city: "Portland", state: "OR", postal_code: "97201", country: "USA").inspect
