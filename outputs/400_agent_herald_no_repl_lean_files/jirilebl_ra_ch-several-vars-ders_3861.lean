import Mathlib

/--
Let f : E → ℝ be C^2 on an open convex set U and assume the Hessian is continuous on U.
Then the second-order Taylor expansion is uniform on compact subsets of U: for every compact
K ⊆ U and every ε>0 there exists δ>0 such that for all x ∈ K and h with ‖h‖<δ and x+h ∈ U
one has
  |f(x+h) - f(x) - fderivWithin ℝ f U x h - 1/2 * (hessian f x h h)| ≤ ε * ‖h‖^2.
This file contains only the statement (no proof).
-/

lemma second_order_taylor_uniform_on_compact {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [FiniteDimensional ℝ E] {U : Set E} {f : E → ℝ}
  (hU_convex : Convex ℝ U)
  (h_cont : ContDiffOn ℝ 2 f U)
  (h_hess_cont : ContinuousOn (hessian f) U) :
  ∀ K : Set E, IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : E, ‖h‖ < δ → x + h ∈ U →
      | f (x + h) - f x - (fderivWithin ℝ f U x) h - (1 / 2 : ℝ) * (hessian f x h h) | ≤ ε * ‖h‖^2 := by sorry
