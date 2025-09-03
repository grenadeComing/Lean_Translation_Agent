import Mathlib

/-!
# Dummit & Foote exercise 7.1.15
A ring R is called a Boolean ring if a^2 = a for all a ∈ R. Prove that every Boolean ring is commutative.
-/

theorem boolean_ring_comm {R : Type _} [Ring R] (h : ∀ a : R, a * a = a) : ∀ a b : R, a * b = b * a := by
  sorry
