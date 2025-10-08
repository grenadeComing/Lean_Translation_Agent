import Mathlib

open Set

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
variable {U : Set E} {f : E → ℝ}

/--
If f : E → ℝ is C^2 on a convex set U (i.e. contDiffOn ℝ 2 f U), then the second-order Taylor
expansion has a uniform remainder of order o(‖h‖^2) on compact subsets of U. The statement is
formulated in ε-δ language: for every compact K ⊆ U and every ε>0 there exists δ>0 such that
for x,y ∈ K with ‖y-x‖<δ the second-order Taylor remainder is bounded by ε‖y-x‖^2.
-/
theorem second_order_taylor_uniform_on_compact
  (hU : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ K : Set E, IsCompact K → K ⊆ U →
    ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧
      ∀ x y, x ∈ K → y ∈ K → ‖y - x‖ < δ →
        |f y - f x - (fderiv ℝ f x (y - x)) - (1 / 2) * (fderiv ℝ (fderiv ℝ f) x (y - x) (y - x))|
        ≤ ε * ‖y - x‖ ^ 2 := by
  sorry
