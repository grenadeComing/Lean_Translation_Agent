import Mathlib

section
variable {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  [NormedSpace ℝ X] [NormedSpace ℝ Y]

-- A + B is bounded:
lemma bound_add (A B : X →L[ℝ] Y) : norm (A + B) ≤ norm A + norm B := by
  sorry

-- α • A is bounded:
lemma bound_smul (α : ℝ) (A : X →L[ℝ] Y) : norm (α • A) = norm α * norm A := by
  sorry

-- Nonnegativity of norm:
lemma norm_nonneg_of_op (A : X →L[ℝ] Y) : 0 ≤ norm A := by
  sorry

end
