import Mathlib

open Finset BigOperators

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]

/-
Exercise 13.6.10 from Artin: In a finite field K, the product of the nonzero elements is -1.
-/
theorem Artin_exercise_13_6_10 : Finset.prod (Finset.univ.erase (0 : K)) (fun x => x) = -1 := by sorry
