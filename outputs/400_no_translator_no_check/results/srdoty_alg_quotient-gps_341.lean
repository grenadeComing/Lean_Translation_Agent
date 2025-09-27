import Mathlib

open Matrix

/-!
We work with 2x2 real matrices. We state that the set G of all real 2x2 matrices of the form
( a b ; 0 c ) (with a,c ≠ 0 so the matrix is invertible) is a subgroup of GL(2), and that the
subset N = { (1 b; 0 1) } is a normal subgroup of G.

The proofs are omitted (filled with `sorry`) as requested.
-/

theorem G_is_subgroup :
  ∃ (H : Subgroup ((Matrix (Fin 2) (Fin 2) ℝ)ˣ)),
    ∀ M, M ∈ H ↔ ((M : Matrix (Fin 2) (Fin 2) ℝ) 1 0 = 0) :=
  by sorry

theorem N_is_normal :
  ∃ (N : Subgroup ((Matrix (Fin 2) (Fin 2) ℝ)ˣ)),
    (∀ M,
      M ∈ N ↔ ((M : Matrix (Fin 2) (Fin 2) ℝ) 0 0 = 1 ∧ (M : Matrix (Fin 2) (Fin 2) ℝ) 1 1 = 1 ∧ (M : Matrix (Fin 2) (Fin 2) ℝ) 1 0 = 0)) ∧
    (∀ g : (Matrix (Fin 2) (Fin 2) ℝ)ˣ,
      (fun n => g * n * g⁻¹) '' (N : Set _) = (N : Set _)) :=
  by sorry
