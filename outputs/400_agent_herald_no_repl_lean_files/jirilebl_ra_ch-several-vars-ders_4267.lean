import Mathlib

/-!
Let E be a finite-dimensional normed real vector space (for example E = ℝ^n).
Let f : E → ℝ be C^2 on a convex set U ⊆ E, and assume the Hessian (the iterated
Fréchet derivative of order 2) of f is continuous on U. Then the remainder in the
Taylor approximation of order 2 is o(‖h‖^2) uniformly on compact subsets of U.

The statement below expresses the uniform little-o property in ε-δ form on compact
subsets K ⊆ U.  The proof is omitted (``:= by sorry'').
-/

open Set Metric

theorem taylor_remainder_order_two_uniform_small_o {E : Type*} [NormedAddCommGroup E]
  [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {f : E → ℝ} {U : Set E}
  (hU : Convex U)
  (hC2 : ContDiffOn ℝ 2 f U)
  (hHess_cont : ContinuousOn (fun x => iteratedFDeriv ℝ 2 f x) U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ (ε : ℝ), ε > 0 → ∃ (δ : ℝ), δ > 0 ∧
      ∀ (x : E) (hx : x ∈ K) (h : E), ‖h‖ < δ →
        abs (f (x + h) - f x - (fderiv ℝ f x : E →L[ℝ] ℝ) h - (1 / 2) * (iteratedFDeriv ℝ 2 f x) (h, h)) ≤ ε * ‖h‖ ^ 2 :=
by sorry
