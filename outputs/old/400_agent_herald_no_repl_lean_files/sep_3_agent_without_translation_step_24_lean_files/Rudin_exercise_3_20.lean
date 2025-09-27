import Mathlib

open Filter

variable {X : Type _} [MetricSpace X]

/-- Rudin exercise 3.20:
If (u n) is a Cauchy sequence in a metric space X, and some subsequence u ∘ φ tends to p, then the full sequence u tends to p. -/
theorem Rudin_exercise_3_20 {u : ℕ → X} {p : X} (h_cau : CauchySeq u) (φ : ℕ → ℕ) (hφ : StrictMono φ)
  (h_sub : Tendsto (u ∘ φ) atTop (nhds p)) : Tendsto u atTop (nhds p) := by
  sorry
