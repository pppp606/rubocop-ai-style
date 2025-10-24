# frozen_string_literal: true

# Metrics/MethodLength: Max: 30
# AI-first rationale: Relaxed to allow AI-generated verbosity.
# → reconsider? long contexts may confuse smaller models.

# ✓ ALLOWED: Method with up to 30 lines (AI often generates verbose but clear code)
# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
def process_user_registration(email:, password:, first_name:, last_name:, terms_accepted:)
  # Validate inputs
  raise ArgumentError, "Email is required" if email.nil? || email.empty?
  raise ArgumentError, "Password is required" if password.nil? || password.empty?
  raise ArgumentError, "First name is required" if first_name.nil? || first_name.empty?
  raise ArgumentError, "Last name is required" if last_name.nil? || last_name.empty?
  raise ArgumentError, "Terms must be accepted" unless terms_accepted

  # Validate email format
  # rubocop:disable Style/IfUnlessModifier
  unless email.match?(/\A[\w+\-.]+@[a-z\d-]+(\.[a-z\d-]+)*\.[a-z]+\z/i)
    raise ArgumentError, "Invalid email format"
  end
  # rubocop:enable Style/IfUnlessModifier

  # Validate password strength
  raise ArgumentError, "Password must be at least 8 characters" if password.length < 8

  # Create user record
  user = {
    email: email.downcase,
    password_hash: hash_password(password),
    first_name: first_name.strip,
    last_name: last_name.strip,
    created_at: Time.now,
    updated_at: Time.now
  }

  # Log registration attempt
  puts "User registration attempted: #{email}"

  user
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity

def hash_password(password)
  "hashed_#{password}"
end

# AI-generated code often includes:
# - Extensive validation
# - Detailed error messages
# - Inline documentation via clear variable names
# - Step-by-step processing
# All of which increase line count but improve clarity
