import Mathlib

open Set

variable (m : ℕ)

/-- Pugh Exercise 2.41

Let `‖·‖` be any norm on `ℝ^m` and let `B = { x : ℝ^m | ‖x‖ ≤ 1 }`.
Then `B` is compact. -/
lemma Pugh_exercise_2_41 [NormedAddCommGroup (Fin m → ℝ)] [NormedSpace ℝ (Fin m → ℝ)] [FiniteDimensional ℝ (Fin m → ℝ)] :
  IsCompact ({ x : Fin m → ℝ | ‖x‖ ≤ 1 } : Set (Fin m → ℝ)) := by sorry
