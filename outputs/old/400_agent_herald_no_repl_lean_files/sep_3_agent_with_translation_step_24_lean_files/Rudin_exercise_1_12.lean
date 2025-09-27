import Mathlib

open Complex

theorem Rudin_exercise_1_12 {n : Nat} (z : Fin n → ℂ) :
  Complex.abs (∑ i : Fin n, z i) ≤ ∑ i : Fin n, Complex.abs (z i) := by
  sorry
