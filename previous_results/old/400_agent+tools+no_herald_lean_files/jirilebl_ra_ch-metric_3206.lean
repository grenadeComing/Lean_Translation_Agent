import Mathlib

variable {X : Type _} [TopologicalSpace X]

open BoundedContinuousFunction Filter

/-- Convergence in the sup metric is equivalent to uniform convergence. -/
theorem tendsto_dist_iff_uniform {f_seq : ℕ → BoundedContinuousFunction X ℝ} {f : BoundedContinuousFunction X ℝ} :
  Tendsto (fun n => dist (f_seq n) f) atTop (𝓝 (0 : ℝ)) ↔
    ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n ≥ N, ∀ x : X, |(f_seq n : X → ℝ) x - (f : X → ℝ) x| ≤ ε := by
  sorry
