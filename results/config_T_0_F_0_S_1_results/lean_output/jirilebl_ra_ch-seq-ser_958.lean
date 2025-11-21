import Mathlib

open Filter

/-- If a real sequence `x` converges to `a` and `x n ≤ y n` for all `n`, then
`liminf x ≤ liminf y`. -/
theorem liminf_le_liminf_of_tendsto {x y : ℕ → ℝ} {a : ℝ} (h : Tendsto x atTop (𝓝 a)) (hxy : ∀ n, x n ≤ y n) :
  Filter.liminf x atTop ≤ Filter.liminf y atTop := by sorry

/-- If a real sequence `x` converges to `a` and `x n ≤ y n` for all `n`, then
`limsup x ≤ limsup y`. -/
theorem limsup_le_limsup_of_tendsto {x y : ℕ → ℝ} {a : ℝ} (h : Tendsto x atTop (𝓝 a)) (hxy : ∀ n, x n ≤ y n) :
  Filter.limsup x atTop ≤ Filter.limsup y atTop := by sorry