import Mathlib

/-!
# Sequential compactness implies compactness in metric spaces

If every sequence in a metric space `α` has a convergent subsequence
(i.e. for all `u : ℕ → α` there exists a strictly monotone `φ : ℕ → ℕ` and `x : α`
such that for all `ε > 0` there is `N` with `∀ n ≥ N, dist (u (φ n)) x < ε`), then `α` is a `CompactSpace`.
-/

theorem metric_space_sequentially_compact_implies_compact_space {α : Type _} [MetricSpace α]
  (h : ∀ u : ℕ → α, ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∃ x : α, ∀ ε > (0 : ℝ), ∃ N : ℕ, ∀ n ≥ N, dist (u (φ n)) x < ε) :
  CompactSpace α := by sorry
