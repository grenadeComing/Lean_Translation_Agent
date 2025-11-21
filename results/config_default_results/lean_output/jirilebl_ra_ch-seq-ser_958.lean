import Mathlib

/-- Suppose (x_n) converges to `l` and x_n ≤ y_n for all n. Then liminf x ≤ liminf y and limsup x ≤ limsup y. -/
theorem liminf_limsup_mono_of_convergent {x y : ℕ → ℝ} {l : ℝ}
  (hx : Filter.Tendsto x Filter.atTop (nhds l)) (hxy : ∀ n, x n ≤ y n) :
  Filter.liminf x Filter.atTop ≤ Filter.liminf y Filter.atTop ∧ Filter.limsup x Filter.atTop ≤ Filter.limsup y Filter.atTop := by sorry
