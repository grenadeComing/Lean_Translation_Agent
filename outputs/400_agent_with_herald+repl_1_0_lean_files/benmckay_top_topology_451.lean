import Mathlib

/-- A metric space is sequentially compact if every sequence has a convergent subsequence. -/
def sequentially_compact (X : Type _) [MetricSpace X] : Prop :=
  ∀ s : ℕ → X, ∃ x : X, ∃ φ : ℕ → ℕ, Tendsto (s ∘ φ) atTop (𝓝 x)

/-- In a metric space, sequential compactness implies (cover) compactness. -/
theorem sequentially_compact_metric_compact {X : Type _} [MetricSpace X]
  (h : sequentially_compact X) : IsCompact (univ : Set X) := by sorry
