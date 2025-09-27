import Mathlib

/-!
Exercise: Prove that if G is an abelian group of order p q, where p and q are distinct primes, then G is cyclic.
This file only states the theorem; the proof is omitted (:= by sorry) as requested.
-/

theorem abelian_group_order_pq_cyclic {G : Type*} [AddCommGroup G] [Fintype G] {p q : ℕ}
  (hp : Nat.Prime p) (hq : Nat.Prime q) (hne : p ≠ q) (hcard : Fintype.card G = p * q) :
  ∃ g : G, AddSubgroup.closure (Set.singleton g) = (⊤ : AddSubgroup G) := by sorry
