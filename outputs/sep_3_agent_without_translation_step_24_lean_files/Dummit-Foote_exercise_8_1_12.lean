import Mathlib

theorem Dummit_Foote_exercise_8_1_12 (N : ℕ) (hN : 0 < N) (M M1 : Int) (d d' : ℕ)
  (hd : Nat.gcd d (Nat.totient N) = 1)
  (hrel : Int.gcd M (N : Int) = 1)
  (hM1 : Int.ModEq (N : Int) M1 (M ^ d))
  (hinv : (d * d') % (Nat.totient N) = 1) :
  Int.ModEq (N : Int) M (M1 ^ d') := by sorry
