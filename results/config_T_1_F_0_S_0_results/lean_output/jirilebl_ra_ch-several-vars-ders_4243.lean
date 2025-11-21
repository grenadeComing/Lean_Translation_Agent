import Mathlib

/-- Let n : ℕ, f : (Fin n → ℝ) → ℝ, and U be a convex subset of E = Fin n → ℝ. If f is C^2 on U and K ⊆ U is compact, then the second-order Taylor expansion holds uniformly on K: for every ε > 0 there exists δ > 0 such that for all x ∈ K and all h with ‖h‖ ≤ δ and x + h ∈ U,

    |f (x + h) - f x - fderiv ℝ f x h - 1/2 * (iterated_fderiv ℝ 2 f x) (h, h)| ≤ ε * ‖h‖ ^ 2.
-/
theorem taylor_two_uniform_on_compact (n : ℕ) (f : (Fin n → ℝ) → ℝ) (U K : Set (Fin n → ℝ))
  (hcont : ContDiffOn ℝ 2 f U) (hU : Convex ℝ U) (hK : IsCompact K) (hsub : K ⊆ U) :
  ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ ≤ δ → x + h ∈ U →
    |f (x + h) - f x - (fderiv ℝ f x) h - 1 / 2 * (iterated_fderiv ℝ 2 f x) (h, h)| ≤ ε * ‖h‖ ^ 2 := by sorry