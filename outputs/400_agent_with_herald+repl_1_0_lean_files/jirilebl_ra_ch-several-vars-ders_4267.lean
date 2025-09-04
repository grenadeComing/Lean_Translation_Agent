import Mathlib

/-!
  Remainder of Taylor's theorem of order 2 is o(||h||^2) uniformly on compact subsets.
  We work on a finite-dimensional real normed space (so this covers R^n).
-/

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

variable {f : E → ℝ} {U K : Set E}

theorem taylor_remainder_o_sq_on_compact
  (hU : Convex ℝ U) (hK : IsCompact K) (hsub : K ⊆ U)
  (hf : ContDiffOn ℝ 2 f U) (hess_cont : ContinuousOn (fun x => fderiv ℝ (fun y => fderiv ℝ f y) x) U) :
  ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : E, ‖h‖ < δ → x + h ∈ U →
    |f (x + h) - f x - (fderiv ℝ f x) h - 1 / 2 * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h| ≤ ε * ‖h‖ ^ 2 := by
  sorry
