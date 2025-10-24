# frozen_string_literal: true

# Style/SymbolArray: Enabled: false
# AI-first rationale: %i/%I reduce verbosity but hide literal types.
# Explicit symbol arrays are clearer for AI tokenization.

# ✓ GOOD: Explicit symbol arrays (AI-friendly)
statuses = [:pending, :active, :completed]
roles = [:admin, :moderator, :user, :guest]
permissions = [:read, :write, :delete, :execute]

# Explicit syntax makes it clear these are symbols, not strings
def allowed_actions
  [:create, :update, :destroy, :show, :index]
end

# AI can clearly distinguish between symbol type and colon syntax
VALID_ENVIRONMENTS = [:development, :test, :staging, :production].freeze
HTTP_METHODS = [:get, :post, :put, :patch, :delete].freeze

# ✗ DISCOURAGED: %i syntax is more compact but requires special syntax knowledge
# statuses = %i[pending active completed]
# roles = %i[admin moderator user guest]
# permissions = %i[read write delete execute]

# Explicit symbols help AI:
# 1. Recognize symbol type immediately (:symbol)
# 2. Distinguish from strings without context
# 3. Parse without %i syntax knowledge

# Multi-word symbols are clearer with explicit syntax
event_types = [:user_created, :user_updated, :user_deleted]

# Multiline explicit symbol arrays maintain clarity
available_features = [
  :authentication,
  :authorization,
  :rate_limiting,
  :logging,
  :caching
]

# Mixed with other types becomes obvious
configuration = {
  keys: [:api_key, :secret_key, :token],
  formats: ["json", "xml"]
}

# Using the variables (to avoid Lint/UselessAssignment)
puts statuses.inspect
puts roles.inspect
puts permissions.inspect
puts event_types.inspect
puts available_features.inspect
puts configuration.inspect
puts allowed_actions.inspect
