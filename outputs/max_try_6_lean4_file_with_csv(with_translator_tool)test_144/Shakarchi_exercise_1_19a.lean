import Mathlib

/-- Exercise (Shakarchi 1.19 a): The power series \sum n z^n does not converge for any z on the unit circle. -/
theorem shakarchi_exercise_1_19a (z : ℂ) (hz : |z| = (1 : ℝ)) : ¬ Summable (fun n : ℕ => (n : ℂ) * z ^ n) := by sorry
