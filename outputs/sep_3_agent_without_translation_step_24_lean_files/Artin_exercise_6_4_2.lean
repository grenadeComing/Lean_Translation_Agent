import Mathlib

/-!
Artin exercise 6.4.2: No group of order p * q, where p and q are primes, is simple.
We state that for a group G of order p * q there exists a nontrivial proper normal subgroup.
-/

theorem Artin_exercise_6_4_2 {G : Type*} [Group G] [Fintype G] {p q : ℕ}
  (hp : Nat.Prime p) (hq : Nat.Prime q) (hcard : Fintype.card G = p * q) :
  ∃ N : Subgroup G, (∀ g x, x ∈ N → g * x * g⁻¹ ∈ N) ∧ N ≠ (⊥ : Subgroup G) ∧ N ≠ (⊤ : Subgroup G) := by
  sorry
