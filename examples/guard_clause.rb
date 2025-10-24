# frozen_string_literal: true

# Style/GuardClause: Enabled: false
# AI-first rationale: No forced early returns. Keeps control flow flexible for generation.
# → reconsider? shorter branching may help AI chunk reasoning.

# ✓ ALLOWED: Traditional if/else structure (not forced to use guard clauses)
# rubocop:disable Style/IfInsideElse
def process_payment(amount:, user:)
  if user.nil?
    { error: "User is required" }
  else
    if amount <= 0
      { error: "Amount must be positive" }
    else
      { success: true, amount: amount, user_id: user.id }
    end
  end
end
# rubocop:enable Style/IfInsideElse

# ✓ ALSO ALLOWED: Guard clauses (not discouraged, just not enforced)
def validate_user(user:)
  return { error: "User is required" } if user.nil?
  return { error: "User is not active" } unless user.active?

  { success: true, user: user }
end

# ✓ ALLOWED: Nested conditions without early returns
# rubocop:disable Style/IfInsideElse
def calculate_discount(price:, user:, coupon:)
  if user.premium?
    if coupon.valid?
      price * 0.7
    else
      price * 0.9
    end
  else
    if coupon.valid?
      price * 0.95
    else
      price
    end
  end
end
# rubocop:enable Style/IfInsideElse

# AI-first reasoning:
# - Guard clauses reduce nesting (human readability benefit)
# - But AI can handle nested structures equally well
# - Not enforcing allows AI to generate natural control flow
# - Trade-off: Some argue shorter branching helps AI chunk logic

# ✓ ALLOWED: Mixed approach based on context
# rubocop:disable Style/IfUnlessModifier
def update_user(user:, params:)
  if user.nil?
    return { error: "User not found" }
  end

  if params.empty?
    { success: true, user: user, message: "No changes" }
  else
    user.update(params)
    { success: true, user: user }
  end
end
# rubocop:enable Style/IfUnlessModifier

# Example usage (to provide context)
# user = OpenStruct.new(id: 1, premium?: true, active?: true, update: ->(_p) { true })
# coupon = OpenStruct.new(valid?: true)
# puts process_payment(amount: 100, user: user).inspect
# puts validate_user(user: user).inspect
# puts calculate_discount(price: 100, user: user, coupon: coupon)
# puts update_user(user: user, params: {}).inspect
