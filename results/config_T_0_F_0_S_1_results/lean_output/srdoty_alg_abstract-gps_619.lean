import Mathlib

open Set

/-- The set G of 2x2 real matrices of the form [[a, -b], [b, a]]. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | ∃ a b : ℝ, M = fun i j =>
      if i = (0 : Fin 2) ∧ j = (0 : Fin 2) then a
      else if i = (0 : Fin 2) ∧ j = (1 : Fin 2) then -b
      else if i = (1 : Fin 2) ∧ j = (0 : Fin 2) then b
      else a }

/-- G' is G with the zero matrix removed. -/
def G' : Set (Matrix (Fin 2) (Fin 2) ℝ) := G \ ({0} : Set (Matrix (Fin 2) (Fin 2) ℝ))

/-- The subset G' (as a subtype) is a group under matrix multiplication. -/
theorem srdoty_alg_abstract_gps_619 : Group (Subtype G') := by sorry
