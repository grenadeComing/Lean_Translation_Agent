import Mathlib

/-
  Translate: O(2) = { R_θ : θ ∈ ℝ } ∪ { H_θ : θ ∈ ℝ },
  where R_θ = [[cos θ, -sin θ],[sin θ, cos θ]] and
  H_θ is reflection across the line through the origin making
  angle θ with the x-axis.

  We represent 2×2 real matrices as functions Fin 2 → Fin 2 → ℝ
  and define transpose and matrix multiplication explicitly
  (by expanding the 2-term sum). This avoids depending on
  existing Mathlib matrix notations and name conflicts.
-/

open Real

noncomputable section

def Matrix2 := Fin 2 → Fin 2 → ℝ

def mat_id : Matrix2 := fun i j => if i = j then 1 else 0

def transpose (A : Matrix2) : Matrix2 := fun i j => A j i

def mat_mul (A B : Matrix2) : Matrix2 :=
  let e0 := (0 : Fin 2)
  let e1 := (1 : Fin 2)
  fun i j => A i e0 * B e0 j + A i e1 * B e1 j

def O2 : Set Matrix2 := { A | mat_mul (transpose A) A = mat_id }

noncomputable def rot_matrix (θ : ℝ) : Matrix2 := fun i j =>
  if i = (0 : Fin 2) then
    if j = (0 : Fin 2) then Real.cos θ else -Real.sin θ
  else
    if j = (0 : Fin 2) then Real.sin θ else Real.cos θ

noncomputable def refl_matrix (θ : ℝ) : Matrix2 := fun i j =>
  if i = (0 : Fin 2) then
    if j = (0 : Fin 2) then Real.cos (2 * θ) else Real.sin (2 * θ)
  else
    if j = (0 : Fin 2) then Real.sin (2 * θ) else -Real.cos (2 * θ)

theorem o2_eq_rotations_reflections :
  O2 = (Set.range rot_matrix) ∪ (Set.range refl_matrix) := by sorry

end
