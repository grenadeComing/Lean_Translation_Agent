import Mathlib

open Set

theorem Rudin_exercise_5_2 {a b : ℝ} {f : ℝ → ℝ}
  (h_diff : DifferentiableOn ℝ f (Ioo a b))
  (h_pos : ∀ x ∈ Ioo a b, deriv f x > 0) :
  StrictMonoOn f (Ioo a b) ∧
  DifferentiableOn ℝ (Function.invFun f) (f '' Ioo a b) ∧
  ∀ x ∈ Ioo a b, deriv (Function.invFun f) (f x) = (deriv f x)⁻¹ := by
  sorry
