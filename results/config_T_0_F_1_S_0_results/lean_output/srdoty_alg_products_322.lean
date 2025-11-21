import Mathlib

open Nat

/-- If m and n are relatively prime then the cyclic group of order m * n is isomorphic
    to the product of the cyclic groups of orders m and n. -/
noncomputable def cyclic_group_prod_of_coprime {m n : ℕ} (h : Nat.Coprime m n) :
  AddEquiv (ZMod (m * n)) (ZMod m × ZMod n) := by sorry
