import Mathlib

/-- Let p be an odd prime and let 1 + 1/2 + ... + 1/(p - 1) = a / b (as rationals), where a, b are integers. Then p divides a. -/
theorem herstein_exercise_4_2_9 (p : ℕ) (hp : Nat.Prime p) (hpodd : p ≠ 2) (a b : Int)
  (h : (Finset.sum (Finset.range (p - 1)) fun k => (1 : Rat) / ((k : Rat) + 1)) = (a : Rat) / (b : Rat)) :
  (p : Int) ∣ a := by
  sorry
