import Mathlib

open Mathlib

noncomputable def rotation_matrix (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then Real.cos θ else -Real.sin θ
  else if j = 0 then Real.sin θ else Real.cos θ

noncomputable def rotate (θ : ℝ) : (Fin 2 → ℝ) → (Fin 2 → ℝ) := fun v i =>
  rotation_matrix θ i 0 * v 0 + rotation_matrix θ i 1 * v 1

def SO2 := { M : Matrix (Fin 2) (Fin 2) ℝ // M ∈ Set.range rotation_matrix }

def Rotations := { f : (Fin 2 → ℝ) → (Fin 2 → ℝ) // f ∈ Set.range rotate }

/-- The statement: SO(2) is isomorphic to the group of rotations of R^2. -/
noncomputable def SO2_equiv_rotations : SO2 ≃ Rotations := by sorry
