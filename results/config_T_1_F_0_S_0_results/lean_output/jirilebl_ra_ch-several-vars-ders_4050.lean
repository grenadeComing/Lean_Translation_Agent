import Mathlib

open Set

/-- Let f : ℝ^n → ℝ be C^2 with Hessian H_f continuous on a convex set U. Show that the second-order Taylor expansion holds uniformly on compact subsets of U. -/
lemma taylor_second_uniform_on_compact {n : ℕ} {f : (Fin n → ℝ) → ℝ} {U K : Set (Fin n → ℝ)}
  (hU_conv : Convex ℝ U)
  (hcont : ContDiffOn ℝ 2 f U)
  (hH : ContinuousOn (hessian f) U)
  (hK : IsCompact K) (hKsub : K ⊆ U) :
  ∀ ε > 0, ∃ δ > 0, ∀ x y, x ∈ K → y ∈ K → ‖y - x‖ ≤ δ →
    |f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2 : ℝ) * (hessian f x) (y - x) (y - x)| ≤ ε * ‖y - x‖ ^ 2 := by sorry
