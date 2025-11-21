import Mathlib

open Matrix

/-- SO2: proper orthogonal 2x2 real matrices -/
def SO2 : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | Matrix.transpose M * M = 1 ∧ Matrix.det M = 1 }

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = (0 : Fin 2) ∧ j = (0 : Fin 2) then Real.cos θ
  else if i = (0 : Fin 2) ∧ j = (1 : Fin 2) then -Real.sin θ
  else if i = (1 : Fin 2) ∧ j = (0 : Fin 2) then Real.sin θ
  else Real.cos θ

theorem SO2_eq_rotations : SO2 = Set.range (fun θ : ℝ => R θ) := by sorry
