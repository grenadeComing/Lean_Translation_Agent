import Mathlib

open Matrix

/-- The general linear group GL_2(R) as units of 2×2 real matrices. -/
def GL2 := (Matrix (Fin 2) (Fin 2) ℝ)ˣ

/-- There exists a subgroup G of GL2 consisting exactly of the upper-triangular matrices
    of the form [[a,b],[0,c]] (equivalently those with entry (1,0) = 0). -/
theorem exists_G_subgroup :
  ∃ H : Subgroup GL2, ∀ M : GL2,
    (M ∈ (H : Set GL2)) ↔ ((M : Matrix (Fin 2) (Fin 2) ℝ) (1 : Fin 2) (0 : Fin 2) = 0) := by sorry

/-- There exists a subgroup N of GL2 consisting exactly of the unipotent upper-triangular
    matrices [[1,b],[0,1]], and this subgroup is normal in the subgroup G above. -/
theorem exists_N_normal :
  ∃ N : Subgroup GL2,
    (∀ M : GL2,
      (M ∈ (N : Set GL2)) ↔
      ((M : Matrix (Fin 2) (Fin 2) ℝ) (0 : Fin 2) (0 : Fin 2) = 1 ∧ (M : Matrix (Fin 2) (Fin 2) ℝ) (1 : Fin 2) (1 : Fin 2) = 1 ∧ (M : Matrix (Fin 2) (Fin 2) ℝ) (1 : Fin 2) (0 : Fin 2) = 0)) ∧
    IsNormal N := by sorry