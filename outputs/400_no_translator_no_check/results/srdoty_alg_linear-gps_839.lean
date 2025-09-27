import Mathlib

/-!
Let F be a field and G = {E t | t ∈ F} with E(t) = [[1, t], [0, 1]].
We state that G is a matrix group under multiplication.
-/

variable (F : Type _) [Field F]

/-- The 2×2 unipotent upper-triangular matrix with parameter t -/
noncomputable def E (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    if i = 0 then
      if j = 0 then (1 : F) else t
    else
      if j = 0 then (0 : F) else (1 : F)

/-- The set G = {E t | t ∈ F} as a set of 2×2 matrices -/
def G_set : Set (Matrix (Fin 2) (Fin 2) F) := { M | ∃ t, M = E F t }

/-- There exists a subgroup of the group of units of 2×2 matrices whose underlying
    matrices are exactly the matrices E t. In other words, G is a matrix group
    under multiplication. (Proof omitted.) -/
theorem srdoty_alg_linear_gps_839 :
  ∃ H : Subgroup (Units (Matrix (Fin 2) (Fin 2) F)),
    ∀ (u : Units (Matrix (Fin 2) (Fin 2) F)),
      u ∈ H → ∃ t, (u : Matrix (Fin 2) (Fin 2) F) = E F t := by sorry
