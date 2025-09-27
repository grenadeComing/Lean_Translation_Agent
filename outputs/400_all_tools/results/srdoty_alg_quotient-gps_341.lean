import Mathlib

open Matrix

/-- A = 2x2 real matrices -/
def A := Matrix (Fin 2) (Fin 2) ℝ

/-- G_set: invertible upper-triangular 2x2 real matrices (lower-left entry = 0) -/
def G_set : Set (Units A) :=
  { M | ((M : A) (1 : Fin 2) (0 : Fin 2)) = (0 : ℝ) }

/-- N_set: unipotent upper-triangular matrices [[1,b],[0,1]] -/
def N_set : Set (Units A) :=
  { M |
    ((M : A) (0 : Fin 2) (0 : Fin 2)) = (1 : ℝ) ∧
    ((M : A) (1 : Fin 2) (1 : Fin 2)) = (1 : ℝ) ∧
    ((M : A) (1 : Fin 2) (0 : Fin 2)) = (0 : ℝ) }

/-- There exists a subgroup of Units A whose carrier is G_set. -/
theorem exists_subgroup_G : ∃ H : Subgroup (Units A), H.carrier = G_set := by sorry

/-- There exists a subgroup of Units A whose carrier is N_set. -/
theorem exists_subgroup_N : ∃ H : Subgroup (Units A), H.carrier = N_set := by sorry

/-- N is normal in G: conjugation by elements of G preserves N. -/
theorem N_normal_in_G : ∀ (g : Units A), ((g : A) (1 : Fin 2) (0 : Fin 2)) = (0 : ℝ) →
  ∀ (n : Units A), n ∈ N_set → (g * n * g⁻¹) ∈ N_set := by sorry
