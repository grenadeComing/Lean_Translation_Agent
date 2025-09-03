import Mathlib

theorem Ireland_Rosen_exercise_4_4 (p : ℕ) (hp : Nat.Prime p) (h4 : p % 4 = 1) (a : ZMod p) (ha : a ≠ 0) :
  (∀ d : ℕ, 0 < d → d < p - 1 → a ^ d ≠ 1) ↔ (∀ d : ℕ, 0 < d → d < p - 1 → (-a) ^ d ≠ 1) := by
  sorry
