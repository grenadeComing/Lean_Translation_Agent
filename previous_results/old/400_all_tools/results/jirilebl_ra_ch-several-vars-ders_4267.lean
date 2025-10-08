import Mathlib
open Set Fin Filter Function
open scoped NNReal Topology

/-- Let E = ℝ^n (a finite-dimensional normed real vector space). Let U be a convex subset of E. Let f : E → ℝ be C^2 on U (ContDiffOn ℝ 2 f U). Show the Taylor remainder of order 2 is o(‖h‖^2) uniformly on compact subsets of U: i.e. for every compact K ⊆ U and every ε>0 there exists δ>0 such that for all a∈K and h with a+h∈U and ‖h‖<δ we have
| f(a+h) - f(a) - (fderiv ℝ f a) h - 1/2 * ((fderiv (fun x => fderiv ℝ f x) a) h) h | ≤ ε * ‖h‖^2.

This is stated as a theorem ending with := by sorry (no full proof). -/ 

theorem taylor_approx_two_on_convex_of_contDiffOn_tac_5021 {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  (f : E → ℝ) (U : Set E) (hU : Convex ℝ U) (hf : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U → ∀ ε > 0, ∃ δ > 0, ∀ a ∈ K, ∀ h, a + h ∈ U → ‖h‖ < δ →
    |f (a + h) - f a - (fderiv ℝ f a) h - 1 / 2 * ((fderiv ℝ (fderiv ℝ f) a) h) h| ≤ ε * ‖h‖ ^ 2 :=
  by sorry
