import Mathlib

/-!
Exercise: Prove that the power series ∑ n z^n does not converge for any complex number z with |z| = 1.
We state the result; the proof is omitted (sorry).
-/-

theorem Shakarchi_exercise_1_19a (z : ℂ) (hz : |z| = 1) : ¬ Summable (fun n : ℕ => (n : ℂ) * z ^ n) := by sorry
