import Mathlib

/-!
# Dummit & Foote, Exercise 7.1.15

A ring R is called a Boolean ring if a^2 = a for all a ∈ R. Prove that every Boolean ring is commutative.
-/

theorem boolean_ring_comm {R : Type*} [Ring R] (h : ∀ a : R, a * a = a) : ∀ x y : R, x * y = y * x := by sorry
