import Mathlib

open Nat

theorem Herstein_exercise_2_6_15 {G : Type*} [CommGroup G] {a b : G} {m n : ℕ}
  (ha : orderOf a = m) (hb : orderOf b = n) (hcop : Nat.gcd m n = 1) :
  ∃ x : G, orderOf x = m * n := by sorry
