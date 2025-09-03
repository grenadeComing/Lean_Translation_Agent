import Mathlib
open BigOperators
open Real Nat Topology

/-- If x y are complex, prove that ||x|-|y|| ≤ |x-y|. -/
theorem lean_13_rudin_1_13 (x y : ℂ) : |Complex.abs x - Complex.abs y| ≤ Complex.abs (x - y) := by sorry
