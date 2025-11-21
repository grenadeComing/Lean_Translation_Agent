import Mathlib

variable {n : ℕ}
variable {x0 : Fin n → ℝ}
variable {f : (Fin n → ℝ) → ℝ}

/-- Suppose f : R^n → R is differentiable on a neighborhood of x0 and the map x ↦ fderiv ℝ f x is
    continuous at x0. Then f is differentiable at x0. -/
theorem differentiable_at_of_exists_open_and_continuous_fderiv
  (hU : ∃ U : Set (Fin n → ℝ), IsOpen U ∧ x0 ∈ U ∧ ∀ x ∈ U, DifferentiableAt ℝ f x)
  (hcont : ContinuousAt (fun x => fderiv ℝ f x) x0) :
  DifferentiableAt ℝ f x0 := by sorry
