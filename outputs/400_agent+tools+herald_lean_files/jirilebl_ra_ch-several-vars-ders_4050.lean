import Mathlib

open Set

variable {n : ℕ}

/-- Let f : R^n → R be C^2 with its Hessian continuous on a convex set U. The second-order
    Taylor expansion holds uniformly on compact subsets of U. -/
theorem taylor_second_order_uniform_on_compact
  {U K : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : Convex ℝ U)
  (hcont : ContDiffOn ℝ 2 f U)
  (hK : IsCompact K) (hKsub : K ⊆ U) :
  ∀ ε > (0 : ℝ), ∃ δ > 0, ∀ x y, x ∈ K → y ∈ K → ‖y - x‖ ≤ δ →
    |f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2 : ℝ) * (iteratedFDeriv ℝ 2 f x) (fun _ => y - x)| ≤ ε * ‖y - x‖^2 := by sorry
