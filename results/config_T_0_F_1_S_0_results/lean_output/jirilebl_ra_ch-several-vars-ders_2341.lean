import Mathlib

/-
Let X and Y be normed vector spaces over ℝ. We state the following facts (without proof):
1) If A,B : X → Y are linear and bounded operators (i.e. elements of X →L[ℝ] Y), then A + B is bounded.
2) If α ∈ ℝ and A : X →L[ℝ] Y, then α • A is bounded.
3) The operator norm ‖·‖ on X →L[ℝ] Y satisfies the norm axioms (nonnegativity, definiteness, triangle inequality, absolute homogeneity).
-/

variables {X Y : Type*}
  [NormedAddCommGroup X] [NormedAddCommGroup Y]
  [NormedSpace ℝ X] [NormedSpace ℝ Y]

open ContinuousLinearMap

-- 1) Sum of bounded linear maps is bounded (existence formulation)
theorem bounded_add (A B : X →L[ℝ] Y) : ∃ C : X →L[ℝ] Y, C = A + B := by
  sorry

-- 2) Scalar multiple of a bounded linear map is bounded (existence formulation)
theorem bounded_smul (α : ℝ) (A : X →L[ℝ] Y) : ∃ C : X →L[ℝ] Y, C = α • A := by
  sorry

-- 3) The operator norm on X →L[ℝ] Y satisfies the norm axioms
theorem operator_norm_is_norm :
  (∀ A : X →L[ℝ] Y, 0 ≤ ‖A‖) ∧
  (∀ A : X →L[ℝ] Y, ‖A‖ = 0 → A = 0) ∧
  (∀ A B : X →L[ℝ] Y, ‖A + B‖ ≤ ‖A‖ + ‖B‖) ∧
  (∀ (α : ℝ) (A : X →L[ℝ] Y), ‖α • A‖ = |α| * ‖A‖) := by
  sorry
