import Mathlib

/-
Suppose f : ℝ^n → ℝ is differentiable in a neighborhood of x0 and that Df is continuous at x0.
Show that f is differentiable at x0. (That is, C^1 implies differentiability.)

We state a general version in Mathlib terms: if f is differentiable on an open neighbourhood U of x0
and the map x ↦ fderiv ℝ f x is continuous at x0, then f has the derivative fderiv ℝ f x0 at x0.
-/

variable {n : Nat}
variable {x0 : Fin n → ℝ}
variable {f : (Fin n → ℝ) → ℝ}

theorem C1_on_at_implies_has_fderiv_at
  (U : Set (Fin n → ℝ)) (hU : IsOpen U) (hx : x0 ∈ U)
  (hdiff : DifferentiableOn ℝ f U)
  (hcont : ContinuousAt (fun x => fderiv ℝ f x) x0) :
  HasFDerivAt f (fderiv ℝ f x0) x0 := by sorry
