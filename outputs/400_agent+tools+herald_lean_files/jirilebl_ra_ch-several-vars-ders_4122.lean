import Mathlib
open Set Filter

/-- Let f : ℝ^n → ℝ be C^2 with H_f continuous on a convex set U. Show that the second-order Taylor expansion is uniform on compact subsets of U. -/
theorem uniform_taylor_second_on_compact
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {U K : Set E} {f : E → ℝ}
  (hU : Convex ℝ U) (hK : IsCompact K) (hsub : K ⊆ U)
  (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (ε : ℝ), 0 < ε → ∃ (δ : ℝ), 0 < δ ∧ ∀ x ∈ K, ∀ (h : E), ‖h‖ ≤ δ → x + h ∈ U →
    |f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => (fderiv ℝ f y)) x) (h) : E → ℝ) h| ≤ ε * ‖h‖ ^ 2 := by sorry
