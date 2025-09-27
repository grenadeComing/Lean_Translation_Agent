import Mathlib

variable {k : Type*} {V : Type*} [Field k] [AddCommGroup V] [Module k V]

/-- Axler exercise 1.3: negation is involutive in a vector space. -/
theorem axler_exercise_1_3 (v : V) : -(-v) = v := by sorry
