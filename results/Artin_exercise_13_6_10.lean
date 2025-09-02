import Mathlib

/-- Artin Ex. 13.6.10

Let K be a finite field. The product of the nonzero elements of K is -1. -/
theorem Artin_exercise_13_6_10 {K : Type _} [Field K] [Fintype K] [DecidableEq K] :
  Finset.prod (Finset.univ.erase (0 : K)) (fun a => a) = (-1 : K) := by sorry
