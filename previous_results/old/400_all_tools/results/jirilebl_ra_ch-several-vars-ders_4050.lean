import Mathlib

/-- Let f : E → ℝ be C^2 on a convex set U. The second-order Taylor expansion holds uniformly on compact subsets of U.

For any compact K ⊆ U and any ε>0 there exists δ>0 such that for all x,y ∈ K with ‖y-x‖<δ we have

|f(y) - f(x) - fderiv ℝ f x (y-x) - 1/2 * (((fderiv ℝ (fun z => fderiv ℝ f z) x) (y-x)) (y-x))| ≤ ε * ‖y-x‖^2.
-/
theorem taylor_approx_two_on_convex_of_continuous_on {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {U : Set E} (hU : Convex ℝ U) {f : E → ℝ} (hf : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U → ∀ ε > 0, ∃ δ > 0,
    ∀ ⦃x y : E⦄, x ∈ K → y ∈ K → ‖y - x‖ < δ →
      |f y - f x - (fderiv ℝ f x) (y - x) - 1 / 2 * ((fderiv ℝ (fun z => fderiv ℝ f z) x) (y - x)) (y - x)|
        ≤ ε * ‖y - x‖ ^ 2 := by sorry
