import Mathlib

variable {n : ℕ}

def E := Fin n → ℝ

/-- Let f : R^n → R be C^2 with Hessian continuous on a convex set U. The second-order Taylor expansion is uniform on compact subsets of U. -/
theorem uniform_second_order_taylor_on_compact
  {U : Set E} {f : E → ℝ}
  (hU : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E) (hK : IsCompact K) (hKsub : K ⊆ U) (ε : ℝ), ε > 0 →
  ∃ δ > 0, ∀ x y ∈ K, ‖y - x‖ < δ →
    abs (f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2 : ℝ) * (fderiv ℝ (fun v => fderiv ℝ f v (y - x)) x) (y - x)) ≤ ε * ‖y - x‖ ^ 2 := by sorry