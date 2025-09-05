import Mathlib

/-!
Suppose f : ℝ^n → ℝ is differentiable in a neighborhood of x0 ∈ ℝ^n and that Df is continuous at x0.
Show that f is differentiable at x0. (That is, C^1 implies differentiability.)

The following formulation is slightly more general: if on some open neighborhood of x0 the function f has
a (continuous linear) derivative f' x at every point x, and the map x ↦ f' x is continuous at x0, then
f has derivative f' x0 at x0.
-/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [NormedAddCommGroup F] [NormedSpace ℝ F]

theorem has_fderiv_at_of_local_has_fderiv_and_continuous (
  f : E → F) (f' : E → E →L[ℝ] F) {x0 : E} :
  (∃ s : Set E, IsOpen s ∧ x0 ∈ s ∧ ∀ x ∈ s, HasFderivAt f (f' x) x) →
  ContinuousAt f' x0 →
  HasFderivAt f (f' x0) x0 := by sorry
