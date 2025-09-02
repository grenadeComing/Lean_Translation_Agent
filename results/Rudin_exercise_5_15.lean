import Mathlib

/-
Suppose a ∈ ℝ, f is twice-differentiable real function on (a, ∞), and M0, M1, M2 are the least
upper bounds of |f(x)|, |f'(x)|, |f''(x)| respectively on (a, ∞). Prove that M1^2 ≤ 4 M0 M2.
-/

theorem Rudin_exercise_5_15 (a : ℝ) (f : ℝ → ℝ)
  (hf : ∀ x, a < x → DifferentiableAt ℝ f x)
  (M0 M1 M2 : ℝ)
  (hM0 : ∀ x, a < x → |f x| ≤ M0)
  (hM1 : ∀ x, a < x → |deriv f x| ≤ M1)
  (hM2 : ∀ x, a < x → |deriv (deriv f) x| ≤ M2) :
  M1^2 ≤ 4 * M0 * M2 := by sorry
