import Mathlib

open Set

/-- Rudin exercise: Suppose a ∈ ℝ, f is twice-differentiable on (a, ∞), and M0, M1, M2 are upper bounds
of |f|, |f'|, |f''| respectively on (a, ∞). Then M1^2 ≤ 4 M0 M2. -/
theorem Rudin_exercise_5_15 (a : ℝ) (f : ℝ → ℝ) (f' f'' : ℝ → ℝ)
  (hder1 : ∀ x, a < x → HasDerivAt f (f' x) x)
  (hder2 : ∀ x, a < x → HasDerivAt (fun x => f' x) (f'' x) x)
  (M0 M1 M2 : ℝ)
  (hM0 : ∀ x, a < x → abs (f x) ≤ M0)
  (hM1 : ∀ x, a < x → abs (f' x) ≤ M1)
  (hM2 : ∀ x, a < x → abs (f'' x) ≤ M2) :
  M1 ^ 2 ≤ 4 * M0 * M2 := by sorry
