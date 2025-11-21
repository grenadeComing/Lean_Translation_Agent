import Mathlib

open Matrix
open Set

/-- The set G = { [[a, -b], [b, a]] : a b : ℝ } as a set of 2x2 real matrices. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | ∃ a b : ℝ, M = fun i j =>
      if i = 0 ∧ j = 0 then a
      else if i = 0 ∧ j = 1 then -b
      else if i = 1 ∧ j = 0 then b
      else a }

/-- G' = G \ {0} -/
def G' : Set (Matrix (Fin 2) (Fin 2) ℝ) := G \ { (0 : Matrix (Fin 2) (Fin 2) ℝ) }

/-- We assert that G' is a group under matrix multiplication. -/
instance group_on_G' : Group { M : Matrix (Fin 2) (Fin 2) ℝ // M ∈ G' } := by sorry
