import Mathlib

open Set Filter

/-- Let f : ℝ^n → ℝ be C^2 with H_f continuous on a convex set U. Show that the second-order Taylor expansion is uniform on compact subsets of U.

If f : (Fin n → ℝ) → ℝ is twice continuously differentiable on a convex set U, then for every compact set K ⊆ U one has

sup_{x ∈ K, h : Fin n → ℝ, x+h ∈ U, h ≠ 0} | f(x+h) - f(x) - (fderiv ℝ f x) h - 1/2 * ((fderiv ℝ (fderiv ℝ f) x) h) h | / ‖h‖^2 → 0 as h → 0,

i.e. the remainder is o(‖h‖^2) uniformly for x ∈ K. -/
theorem uniform_taylor_on_compacts (n : ℕ) (f : (Fin n → ℝ) → ℝ)
  {U K : Set (Fin n → ℝ)} (hU : Convex ℝ U) (hK : IsCompact K) (hsub : K ⊆ U)
  (hcont : ContDiffOn ℝ 2 f U) :
  ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, x + h ∈ U -> h ≠ 0 -> ‖h‖ < δ ->
    (|f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2) * ((fderiv ℝ (fderiv ℝ f) x) h) h|) / ‖h‖ ^ 2 < ε := by sorry
