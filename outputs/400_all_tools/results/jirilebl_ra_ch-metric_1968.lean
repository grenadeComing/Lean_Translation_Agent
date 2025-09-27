import Mathlib
open Set Filter
open scoped Topology

/-- Let X be a metric space such that every sequence in X has a convergent subsequence. Prove that every open cover of X has a finite subcover. This states that if for every sequence u : ℕ → X there exists x : X and a strictly increasing b : ℕ → ℕ with Tendsto (u ∘ b) atTop (𝓝 x), then X is compact (CompactSpace X). -/
theorem compactSpace_of_seq_tendsto_imp_tendsto {X : Type*} [MetricSpace X]
  (h : ∀ (u : ℕ → X), ∃ x, ∃ b : ℕ → ℕ, Tendsto (u ∘ b) atTop (𝓝 x)) : CompactSpace X := by sorry
