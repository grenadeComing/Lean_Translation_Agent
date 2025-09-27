import Mathlib

open Matrix

def M2 := Matrix (Fin 2) (Fin 2) ℝ

/-- G: invertible 2x2 real matrices of the form [[a,b],[0,c]] -/
def G : Set M2ˣ := { u | (u : M2) (1 : Fin 2) 0 = 0 }

/-- N: invertible 2x2 real matrices of the form [[1,b],[0,1]] -/
def N : Set M2ˣ := { u | (u : M2) 0 0 = 1 ∧ (u : M2) 1 1 = 1 ∧ (u : M2) (1 : Fin 2) 0 = 0 }

/-- G is a subgroup of the group of units of 2x2 real matrices. -/
theorem G_is_subgroup :
  (1 : M2ˣ) ∈ G ∧ (∀ x y, x ∈ G → y ∈ G → x * y ∈ G) ∧ (∀ x, x ∈ G → x⁻¹ ∈ G) := by
  sorry

/-- N is a subgroup of the group of units of 2x2 real matrices. -/
theorem N_is_subgroup :
  (1 : M2ˣ) ∈ N ∧ (∀ x y, x ∈ N → y ∈ N → x * y ∈ N) ∧ (∀ x, x ∈ N → x⁻¹ ∈ N) := by
  sorry

/-- N is normal in G. -/
theorem N_normal : ∀ g ∈ G, ∀ n ∈ N, g * n * g⁻¹ ∈ N := by
  sorry
