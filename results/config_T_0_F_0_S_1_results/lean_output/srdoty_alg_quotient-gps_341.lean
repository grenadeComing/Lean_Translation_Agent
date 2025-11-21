import Mathlib

open Matrix

/-- The set G of all real 2×2 matrices of the form [[a, b], [0, c]] (viewed as units) is a subgroup
    of the group of invertible 2×2 real matrices. We express this by exhibiting a subgroup of the
    units of `Matrix (Fin 2) (Fin 2) ℝ` whose elements are exactly those units whose (1,0)-entry
    is zero. -/
theorem srdoty_alg_quotient_gps_341_G_subgroup :
  ∃ H : Subgroup ((Matrix (Fin 2) (Fin 2) ℝ)ˣ),
    ∀ U : (Matrix (Fin 2) (Fin 2) ℝ)ˣ,
      U ∈ H ↔ ( (U : Matrix (Fin 2) (Fin 2) ℝ) (1 : Fin 2) (0 : Fin 2) = 0 ) := by sorry

/-- Let N be the set of all matrices of the form [[1, b], [0, 1]] (viewed as units). This set is a
    subgroup of the units and is normal in the subgroup G defined above. We state existence of such
    a subgroup N and that it is normal. -/
theorem srdoty_alg_quotient_gps_341_N_normal :
  ∃ N : Subgroup ((Matrix (Fin 2) (Fin 2) ℝ)ˣ),
    (∀ U : (Matrix (Fin 2) (Fin 2) ℝ)ˣ,
       U ∈ N ↔ ( (U : Matrix (Fin 2) (Fin 2) ℝ) (0 : Fin 2) (0 : Fin 2) = 1
                   ∧ (U : Matrix (Fin 2) (Fin 2) ℝ) (1 : Fin 2) (1 : Fin 2) = 1
                   ∧ (U : Matrix (Fin 2) (Fin 2) ℝ) (1 : Fin 2) (0 : Fin 2) = 0 ))
    ∧ IsNormal (N : Subgroup ((Matrix (Fin 2) (Fin 2) ℝ)ˣ)) := by sorry
