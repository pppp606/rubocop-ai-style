# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **discussion-focused repository** for an AI-first RuboCop style configuration. The goal is to optimize Ruby code for **machine readability** (AI parsing, generation, and comprehension) rather than traditional human aesthetics.

The repository is intentionally a discussion space, not a fixed standard. Each rule in `.rubocop.yml` includes inline rationale and potential trade-offs marked with `→ reconsider?` for community feedback.

## Core Philosophy

**AI-First Principles:**
- **Explicitness over brevity**: Prefer explicit arguments, named blocks, and visible structure
- **Consistency over aesthetics**: Uniform syntax helps AI parsing and pattern completion
- **Simplicity over visual formatting**: Disable rules that only serve visual alignment or line breaks
- **Safety always**: Keep all `Lint` and `Security` cops active

**Key Trade-offs:**
- Disables most `Layout` cops (line length, alignment) as they don't affect AI parsing
- Disables syntactic sugar like `%w[]`, `%i[]` in favor of explicit arrays
- Enforces keyword arguments and explicit block arguments for clarity
- Relaxes metrics (method length, ABC size) to accommodate AI-generated verbosity

## Development Commands

### Running RuboCop
```bash
# Install dependencies
bundle install

# Run RuboCop on examples (when examples/ directory exists)
bundle exec rubocop examples/

# Run RuboCop on specific file or directory
bundle exec rubocop <path>

# Auto-correct offenses where possible
bundle exec rubocop -a <path>
```

## Repository Structure

```
.rubocop.yml       # Main configuration with inline rationale and discussion points
README.md          # Project overview and key ideas
Gemfile            # Dependencies (rubocop ~> 1.65)
examples/          # Example Ruby code to test the style configuration
```

## Working with .rubocop.yml

The configuration file is heavily commented with:
- **Rationale**: Why each rule is enabled/disabled for AI-first development
- **Trade-offs**: Marked with `→ reconsider?` for rules that may need discussion
- **Categories**:
  - `Layout/*`: Visual formatting (mostly disabled)
  - `Style/*`: Explicitness and consistency (selectively enforced)
  - `Metrics/*`: Relaxed limits for AI-generated code
  - `Naming/*`: Consistent token patterns (snake_case enforced)
  - `Lint/*` and `Security/*`: All essential cops enabled

When modifying rules:
1. Add inline comments explaining the rationale
2. Mark uncertain decisions with `→ reconsider?`
3. Consider both AI parsing/generation and human review impacts
4. Test changes against example code (when available)

## Contributing to Discussion

This is a discussion repository. When suggesting changes:
- Open issues or PRs for cop configuration changes
- Comment on specific `→ reconsider?` lines in `.rubocop.yml`
- Provide examples showing how AI models interact with the rule
- Consider the balance between machine readability and human maintainability
