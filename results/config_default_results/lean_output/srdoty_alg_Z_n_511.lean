import Mathlib
open Function

/-- Let R be a ring and let a,b,c∈R. Show that a(b-c) = ab - ac. -/
theorem mul_sub_right_distrib [NonUnitalNonAssocRing R] (a b c : R) : a * (b - c) = a * b - a * c := by
  simpa using mul_sub a b c
