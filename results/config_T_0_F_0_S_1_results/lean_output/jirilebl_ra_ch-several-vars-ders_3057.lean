import Mathlib

theorem fderiv_eq_zero_of_local_min
  {X : Type _} [NormedAddCommGroup X] [NormedSpace ℝ X]
  {f : X → ℝ} {x0 : X}
  (hf : DifferentiableAt ℝ f x0)
  (hmin : ∃ s : Set X, IsOpen s ∧ x0 ∈ s ∧ ∀ x ∈ s, f x0 ≤ f x) :
  fderiv ℝ f x0 = (0 : X →L[ℝ] ℝ) := by sorry