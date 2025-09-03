import Mathlib

/-- If a > 1 is an integer, show that n | φ(a^n - 1), where φ is Euler's totient function. -/
theorem herstein_exercise_2_4_36 {a n : ℕ} (a_pos : 1 < a) (n_pos : 0 < n) :
  n ∣ Nat.totient (a ^ n - 1) := by sorry
