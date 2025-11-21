import Mathlib

variable {F : Type _} [Field F]

/-- The standard 2x2 upper unitriangular matrix E(t) = [[1, t], [0, 1]] over a field F. -/
def e_matrix (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  match i, j with
  | 0, 0 => (1 : F)
  | 0, 1 => t
  | 1, 0 => 0
  | 1, 1 => (1 : F)

/-- For all t in F, the inverse of E(t) is E(-t). -/
theorem e_matrix_inv (t : F) : (e_matrix t)⁻¹ = e_matrix (-t) := by sorry
