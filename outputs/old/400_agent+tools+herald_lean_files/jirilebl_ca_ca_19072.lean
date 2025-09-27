import Mathlib

/-
Let z : ℂ. State that Complex.cosh z = (exp z + exp (-z)) / 2
and Complex.sinh z = (exp z - exp (-z)) / 2.
-/

theorem cosh_def (z : Complex) : Complex.cosh z = (Complex.exp z + Complex.exp (-z)) / 2 := by sorry

theorem sinh_def (z : Complex) : Complex.sinh z = (Complex.exp z - Complex.exp (-z)) / 2 := by sorry
