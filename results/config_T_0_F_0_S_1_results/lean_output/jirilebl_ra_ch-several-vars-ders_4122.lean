import Mathlib

open Set Filter

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

/--
Let f : ℝ^n → ℝ be C^2 with H_f continuous on a convex set U. The second-order Taylor
expansion is uniform on compact subsets of U: for every compact K ⊆ U the remainder
is uniformly o(‖y-x‖^2) as y → x, uniformly in x ∈ K.

This statement is expressed in a classical ε-δ form: for every ε>0 there exists δ>0 such
that for all x ∈ K and y ∈ U with ‖y-x‖<δ the normalized remainder is bounded by ε.
-/
theorem second_order_taylor_uniform_on_compact
  {U : Set E} {f : E → ℝ} (hf : ContDiffOn ℝ f 2 U) (hU_convex : Convex ℝ U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ y ∈ U, ‖y - x‖ < δ →
      abs (f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2) * (iterated_fderiv ℝ f 2 x) (y - x) (y - x)) ≤
        ε * ‖y - x‖ ^ 2 := by sorry