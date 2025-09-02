import Mathlib

/-!
Exercise: If p = 2^(2^k) + 1 is a Fermat prime with k ≥ 1, then 3 is a primitive root modulo p.
-/

theorem ireland_rosen_exercise_4_6 {k : ℕ} (hk : 1 ≤ k) (p : ℕ) (hp : p = 2 ^ (2 ^ k) + 1)
  (hp_prime : Nat.Prime p) : IsPrimitiveRoot (3 : ZMod p) (p - 1) := by sorry
