import Mathlib
open BigOperators
open Real Nat Topology


/-- For $j \in\{1,2,3,4\}$, let $z_{j}$ be a complex number with $\left|z_{j}\right|=1$ and $z_{j} \neq 1$. Prove that $3-z_{1}-z_{2}-z_{3}-z_{4}+z_{1} z_{2} z_{3} z_{4} \neq 0 .$ Save it to: Putnam_exercise_2020_b5.lean -/
theorem b5_putnam_exercise_2020 : ∀ z : Fin 4 → ℂ, (∀ j, ‖z j‖ = 1 ∧ z j ≠ 1) → 3 - z 1 - z 2 - z 3 - z 4 + z 1 * z 2 * z 3 * z 4 ≠ 0   :=  by sorry
