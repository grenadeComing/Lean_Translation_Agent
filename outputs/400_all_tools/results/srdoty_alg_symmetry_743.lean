import Mathlib

noncomputable section

open Matrix

/-- Rotation matrix by angle θ in R^2. -/
noncomputable def rot (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then Real.cos θ
  else if i = 0 ∧ j = 1 then -Real.sin θ
  else if i = 1 ∧ j = 0 then Real.sin θ
  else Real.cos θ

/-- Reflection across the horizontal axis (x-axis) -/
def ref_h : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then 1
  else if i = 0 ∧ j = 1 then 0
  else if i = 1 ∧ j = 0 then 0
  else -1

/-- For any angle θ, the conjugation rot θ * ref_h * rot θ equals ref_h. -/
theorem rot_mul_ref_mul_rot_eq_ref (θ : ℝ) : (rot θ) * ref_h * (rot θ) = ref_h := by
  sorry

end noncomputable section
