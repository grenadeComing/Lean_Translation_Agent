import Mathlib

/-- In any ring R, multiplication distributes over subtraction on the right. -/
theorem mul_sub {R : Type _} [Ring R] (a b c : R) : a * (b - c) = a * b - a * c := by sorry
