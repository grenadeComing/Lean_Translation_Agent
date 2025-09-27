import Mathlib

open Finset

/-- Rudin exercise 1.18(a): If k ≥ 2 and x ∈ ℝ^k, then there exists a nonzero y ∈ ℝ^k orthogonal to x.
    We represent ℝ^k as `Fin k → ℝ` and use the dot product defined by the finite sum
    `Finset.univ.sum (fun i => x i * y i)`. -/
theorem Rudin_exercise_1_18a {k : Nat} (hk : 2 ≤ k) (x : Fin k → ℝ) :
  ∃ y : Fin k → ℝ, y ≠ fun _ => 0 ∧ (Finset.univ.sum fun i : Fin k => x i * y i) = 0 := by sorry
