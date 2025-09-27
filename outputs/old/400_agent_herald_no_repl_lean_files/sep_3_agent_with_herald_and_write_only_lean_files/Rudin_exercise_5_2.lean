import Mathlib

open Set

/-- Suppose f'(x) > 0 on (a, b). Then f is strictly increasing on (a, b). Let g be its inverse. Then g is differentiable on f " (Ioo a b) and g'(f x) = 1 / f'(x) for a < x < b. -/
theorem Rudin_exercise_5_2 (a b : ℝ) {f : ℝ → ℝ}
  (h : a < b)
  (hd : DifferentiableOn ℝ f (Ioo a b))
  (hpos : ∀ x ∈ Ioo a b, 0 < deriv f x) :
  StrictMonoOn f (Ioo a b) ∧
  ∃ g : ℝ → ℝ,
    (∀ x ∈ Ioo a b, g (f x) = x) ∧
    DifferentiableOn ℝ g (f '' Ioo a b) ∧
    ∀ x ∈ Ioo a b, deriv g (f x) = (deriv f x)⁻¹ := by
  sorry
