import Mathlib

open Finset

theorem herstein_exercise_4_2_9 (p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2) {a b : ℤ}
  (h : Finset.sum (Finset.range (p - 1)) (fun k => (1 : ℚ) / (k + 1 : ℚ)) = (a : ℚ) / (b : ℚ)) :
  (p : ℤ) ∣ a := by sorry