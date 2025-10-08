import Mathlib

/-!
Statement: Let f : E → ℝ be C^2 with Hessian continuous on a convex set U. Then the
second-order Taylor expansion holds uniformly on compact subsets of U.

We formulate this for a finite-dimensional normed real vector space E (so E ≃ ℝ^n).
-/

open Set

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem second_order_taylor_uniform_on_compact {f : E → ℝ} {U : Set E}
  (hU_convex : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ K, IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ y ∈ U, ‖y - x‖ < δ →
      |f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2) * ((fderiv ℝ (fun x => fderiv ℝ f x) x) (y - x) (y - x))|
        ≤ ε * ‖y - x‖ ^ 2 := by sorry
