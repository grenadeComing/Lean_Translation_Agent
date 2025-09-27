import Mathlib

/-!
Simple lemma: in any ring, multiplication distributes over subtraction on the left.
-/

theorem mul_sub_in_ring {R : Type*} [Ring R] (a b c : R) : a * (b - c) = a * b - a * c := by sorry
