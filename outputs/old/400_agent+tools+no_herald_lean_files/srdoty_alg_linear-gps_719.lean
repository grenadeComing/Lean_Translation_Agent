import Mathlib

open Matrix

/-- The matrix H0 = [[1,0],[0,-1]] as a 2x2 real matrix -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then 1
  else if i = 0 ∧ j = 1 then 0
  else if i = 1 ∧ j = 0 then 0
  else -1

/-- The rotation matrix R_a with angle a -/
noncomputable def R (a : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then Real.cos a
  else if i = 0 ∧ j = 1 then -Real.sin a
  else if i = 1 ∧ j = 0 then Real.sin a
  else Real.cos a

/-- For all real θ, R_{2θ} * H0 * R_{2θ} = H0. -/
theorem rotation_conj_H0 (θ : ℝ) : R (2 * θ) * H0 * R (2 * θ) = H0 := by sorry
