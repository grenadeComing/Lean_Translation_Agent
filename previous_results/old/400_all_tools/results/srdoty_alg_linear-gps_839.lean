import Mathlib

variable (F : Type _) [Field F]

/-- The unipotent upper-triangular 2x2 matrix E(t) = [[1, t], [0, 1]] over a field F. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then (1 : F) else t
    else
      if j = (0 : Fin 2) then (0 : F) else (1 : F)

/-- The set G = { E(t) : t ∈ F }. -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := Set.range (E F)

/-- Statement expressing that G is closed under multiplication, contains the identity, and
    each element has an inverse; hence it is a matrix group. Proof omitted. -/
theorem G_is_matrix_group :
  (∀ t u : F, E F t * E F u = E F (t + u)) ∧
  E F 0 = (1 : Matrix (Fin 2) (Fin 2) F) ∧
  (∀ t : F, E F t * E F (-t) = (1 : Matrix (Fin 2) (Fin 2) F)) := by sorry
