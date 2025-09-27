import Mathlib

/-- Rudin exercise: Suppose f'(x)>0 on (a,b). Prove f is strictly increasing on (a,b), and
let g be its inverse function. Prove g is differentiable and g'(f(x)) = 1 / f'(x) for a<x<b. -/
theorem Rudin_exercise_5_2 {f : ℝ → ℝ} {a b : ℝ} (hab : a < b)
  (h_deriv : ∀ x ∈ Set.Ioo a b, HasDerivAt f (deriv f x) x)
  (h_pos : ∀ x ∈ Set.Ioo a b, 0 < deriv f x) :
  StrictMonoOn f (Set.Ioo a b) ∧
  (∀ x ∈ Set.Ioo a b, HasDerivAt (Function.invFunOn f (Set.Ioo a b)) (1 / deriv f x) (f x)) := by sorry
