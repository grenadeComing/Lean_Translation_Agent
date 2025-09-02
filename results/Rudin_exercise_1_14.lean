import Mathlib
open BigOperators
open Real Nat Topology

/-- If $z$ is a complex number such that $|z|=1$, that is, such that $z \bar{z}=1$, compute $|1+z|^{2}+|1-z|^{2}.$ Save it to: Rudin_exercise_1_14.lean -/
theorem rudin_exercise_1_14 (z : ℂ) (h : Complex.abs z = 1) : (Complex.abs (1 + z))^2 + (Complex.abs (1 - z))^2 = 4 := by sorry
