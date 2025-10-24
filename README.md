# rubocop-ai-style

AI-first RuboCop style configuration, focused on *machine readability* rather than human aesthetics.

This repo is intentionally written as a **discussion space**, not a fixed standard.
Each Cop rule in `.rubocop.yml` includes inline comments about rationale and open trade-offs (`→ reconsider?`).

## Key Ideas
| Axis | Principle |
|------|------------|
| Explicitness | Prefer explicit arguments, named blocks, and visible structure |
| Consistency | Uniform syntax helps AI parsing and pattern completion |
| Simplicity | Disable rules that only serve visual alignment or line breaks |
| Safety | Keep all `Lint` and `Security` cops active |

## Run locally
```bash
bundle install
bundle exec rubocop examples/
```

## Directory

```
examples/  # Example Ruby code to test the style configuration
```

## Join the Discussion

* Open issues or PRs suggesting Cop changes.
* Leave inline comments on `→ reconsider?` lines directly.
* Once stable, this configuration can become a baseline for AI-assisted development projects.
