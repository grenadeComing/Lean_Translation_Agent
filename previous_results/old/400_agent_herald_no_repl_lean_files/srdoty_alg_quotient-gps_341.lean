import Mathlib

/-!
We work over a field (in particular R = ℝ would work); consider 2×2 matrices.
We state that the set G of invertible upper-triangular 2×2 matrices is a subgroup
of GL(2), and that the unipotent upper-triangular matrices N form a normal subgroup
of G. Proofs are omitted (placeholders `by sorry`).
-/

open Matrix
open Subgroup

variable {R : Type*} [Field R]

/-- The carrier set of invertible upper-triangular 2×2 matrices (as a subset of GL(2,R)). -/
def G_set : Set (GL (Fin 2) R) :=
  { g | let M := (g : Matrix (Fin 2) (Fin 2) R); M 1 0 = 0 }

/-- The carrier set of unipotent upper-triangular matrices (1 on the diagonal). -/
def N_set : Set (GL (Fin 2) R) :=
  { g |
    let M := (g : Matrix (Fin 2) (Fin 2) R);
    M 0 0 = 1 ∧ M 1 1 = 1 ∧ M 1 0 = 0 }

/-- G is a subgroup of GL(2,R). -/
theorem G_is_subgroup : Subgroup (GL (Fin 2) R) := by sorry

/-- N is a subgroup of GL(2,R) (indeed of G). -/
theorem N_is_subgroup : Subgroup (GL (Fin 2) R) := by sorry

/-- N is normal in G: for every g in G and n in N we have g n g⁻¹ ∈ N. -/
theorem N_normal_in_G :
  ∀ (g : GL (Fin 2) R), g ∈ G_set → ∀ (n : GL (Fin 2) R), n ∈ N_set →
    (g * n * g⁻¹) ∈ N_set := by sorry
