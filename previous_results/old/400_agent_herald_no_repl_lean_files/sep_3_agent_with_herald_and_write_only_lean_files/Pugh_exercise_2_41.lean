import Mathlib

/-- Let ||·|| be any norm on ℝ^m and let B = { x ∈ ℝ^m : ||x|| ≤ 1 }. Prove that B is compact. -/
theorem Pugh_exercise_2_41 {m : ℕ} : IsCompact (closedBall (0 : Fin m → ℝ) 1) := by sorry
