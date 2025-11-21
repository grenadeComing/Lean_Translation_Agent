import Mathlib

variable {n : ℕ}

/-- We work on R^n represented as `Fin n -> ℝ`. -/
def E := (Fin n) → ℝ

variable (U : Set E) (f : E → ℝ)

open Set

/--
If f is C^2 on a convex set U and its Hessian (second derivative) is continuous on U,
then the Taylor remainder of order 2 is o(‖h‖^2) uniformly on compact subsets of U.
Formulated: for every compact K ⊆ U and every ε>0 there is δ>0 such that for all x∈K
and h with ‖h‖<δ and x+h ∈ U one has
|f(x+h) - f(x) - f' x h - 1/2 * (f'' x) [h,h]| ≤ ε * ‖h‖^2.
-/
theorem taylor_remainder_order_two_o_on_compacts
  (hU_convex : Convex ℝ U)
  (hC2 : ContDiffOn ℝ 2 f U)
  (hHess_cont : ContinuousOn (fun x => fderiv ℝ (fun y => fderiv ℝ f y) x) U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : E, ‖h‖ < δ → x + h ∈ U →
      abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * (((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h)) ≤ ε * ‖h‖^2 := by sorry
