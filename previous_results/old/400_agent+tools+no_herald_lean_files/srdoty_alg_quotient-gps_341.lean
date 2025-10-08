import Mathlib

open Matrix

-- Types
abbrev M := Matrix (Fin 2) (Fin 2) Real
abbrev GL2 := Units M

/-- The set G of invertible upper-triangular 2x2 real matrices (bottom-left entry = 0). -/
def G_set : Set GL2 := { U | ((U : M) (1 : Fin 2) (0 : Fin 2) = 0) }

/-- The subgroup N of unipotent upper-triangular 2x2 real matrices (1's on the diagonal). -/
def N_set : Set GL2 :=
  { U |
    ((U : M) (1 : Fin 2) (0 : Fin 2) = 0) ∧
    ((U : M) (0 : Fin 2) (0 : Fin 2) = 1) ∧
    ((U : M) (1 : Fin 2) (1 : Fin 2) = 1) }

/-- G is a subgroup of GL(2, R). -/
def G : Subgroup GL2 := by sorry

/-- N is a subgroup of GL(2, R). -/
def N : Subgroup GL2 := by sorry

/-- N is normal in G: for g in G and n in N we have g*n*g^{-1} in N. -/
def N_normal_in_G :
  ∀ (g : GL2) (hg : g ∈ (G : Set GL2)) (n : GL2) (hn : n ∈ (N : Set GL2)),
    (g * n * g⁻¹) ∈ (N : Set GL2) := by sorry
