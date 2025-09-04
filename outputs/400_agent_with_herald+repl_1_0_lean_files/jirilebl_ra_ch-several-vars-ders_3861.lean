import Mathlib

/-- Let f : R^n → R be C^2 and H_f continuous in a convex set U. Show that the second-order Taylor
expansion is uniform on compact subsets of U. -/
theorem taylor_second_order_uniform_on_compact {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU_conv : Convex ℝ U) (hC2 : ContDiffOn ℝ 2 f U)
  (hHess : ContinuousOn (fun x => fderiv ℝ (fun y => fderiv ℝ f y) x) U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
  ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ ≤ δ → x + h ∈ U →
    |f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h| ≤ ε * ‖h‖ ^ 2 := by sorry
