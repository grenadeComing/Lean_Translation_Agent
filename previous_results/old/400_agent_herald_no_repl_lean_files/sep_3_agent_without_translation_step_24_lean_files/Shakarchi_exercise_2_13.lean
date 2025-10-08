import Mathlib

open Function

noncomputable def iter_deriv : ℕ → (ℂ → ℂ) → ℂ → ℂ
| 0, f => f
| n+1, f => deriv (iter_deriv n f)

theorem Shakarchi_exercise_2_13 (f : ℂ → ℂ) (hd : Differentiable ℂ f)
  (h : ∀ z0 : ℂ, ∃ n : ℕ, iter_deriv n f z0 = 0) :
  ∃ N : ℕ, iter_deriv (N + 1) f = fun _ => 0 := by sorry
