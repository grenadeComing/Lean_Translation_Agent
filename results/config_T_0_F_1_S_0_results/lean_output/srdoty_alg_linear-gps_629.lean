import Mathlib

open Matrix

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => if i = 0 ∧ j = 0 then Real.cos θ
             else if i = 0 ∧ j = 1 then -Real.sin θ
             else if i = 1 ∧ j = 0 then Real.sin θ
             else Real.cos θ

noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => if i = 0 ∧ j = 0 then Real.cos (2 * θ)
             else if i = 0 ∧ j = 1 then Real.sin (2 * θ)
             else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
             else -Real.cos (2 * θ)

def O2 : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | Matrix.transpose M * M = 1 }

theorem O2_equals_rot_ref : O2 = (Set.range R) ∪ (Set.range H) := by sorry
