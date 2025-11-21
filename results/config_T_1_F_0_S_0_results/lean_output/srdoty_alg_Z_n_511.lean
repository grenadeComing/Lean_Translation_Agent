import Mathlib

variable {R : Type _} [Ring R]

/-- Let R be a ring and let a, b, c ∈ R. Show that a(b - c) = ab - ac. -/
theorem mul_sub_left_distrib (a b c : R) : a * (b - c) = a * b - a * c := by sorry