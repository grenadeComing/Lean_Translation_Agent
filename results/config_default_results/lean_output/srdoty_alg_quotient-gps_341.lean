import Mathlib

open Matrix

variable {R : Type*} [Semiring R]
variable [DecidableEq (Fin 2)] [Fintype (Fin 2)]

/-- 2x2 matrices over a semiring R. -/
def M := Matrix (Fin 2) (Fin 2) R

/-- The general linear group GL(2, R) as units of the matrix algebra. -/
def GL2 := Units M

/-- G: invertible upper-triangular 2x2 matrices (lower-left entry = 0). -/
def G_set : Set GL2 := { g | g.val (1 : Fin 2) (0 : Fin 2) = 0 }

/-- N: invertible unipotent upper-triangular matrices [[1, b], [0, 1]]. -/
def N_set : Set GL2 := { g |
  g.val (0 : Fin 2) (0 : Fin 2) = 1 ∧ g.val (1 : Fin 2) (1 : Fin 2) = 1 ∧ g.val (1 : Fin 2) (0 : Fin 2) = 0 }

/-- G is a subgroup of GL2. -/
def G_subgroup : Subgroup GL2 := {
  carrier := G_set,
  one_mem := by sorry,
  mul_mem := by sorry,
  inv_mem := by sorry }

/-- N is a subgroup of GL2 (the unipotent upper-triangular matrices). -/
def N_subgroup : Subgroup GL2 := {
  carrier := N_set,
  one_mem := by sorry,
  mul_mem := by sorry,
  inv_mem := by sorry }

/-- N is normal in G: for every g ∈ G and n ∈ N we have g * n * g⁻¹ ∈ N. -/
theorem N_normal_in_G : ∀ g : GL2, g ∈ G_subgroup → ∀ n : GL2, n ∈ N_subgroup → g * n * g⁻¹ ∈ N_subgroup := by sorry
