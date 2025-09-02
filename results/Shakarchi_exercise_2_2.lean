import Mathlib

open Real

/-!
Shakarchi, Real Analysis, exercise: show that \int_0^{\infty} \frac{\sin x}{x}\,dx = \frac{\pi}{2}.
We state the classical result (Lebesgue integral over (0,\infty)).
-/

theorem Shakarchi_exercise_2_2 : (∫ x in Set.Ioi (0 : ℝ), sin x / x ∂volume) = π / 2 := by sorry
