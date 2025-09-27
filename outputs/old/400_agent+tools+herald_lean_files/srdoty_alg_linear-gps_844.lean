import Mathlib

open Matrix

variable {F : Type*} [Field F]

/-- G is the set of 4x4 block upper-triangular matrices with 2x2 blocks A,B,C
    and zero bottom-left block, where det(A * C) ≠ 0. We index the 4×4
    matrices as a sum of two Fin 2 blocks: Fin 2 ⊕ Fin 2. -/
def G : Set (Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F) :=
  { M | ∃ (A B C : Matrix (Fin 2) (Fin 2) F),
      M = Matrix.fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C ∧
      Matrix.det (A * C) ≠ 0 }

/-- The identity matrix of size 4 (viewed as Fin 2 ⊕ Fin 2) is in G. -/
lemma one_mem_G : (1 : Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F) ∈ G := by sorry

/-- G is closed under multiplication. -/
lemma mul_closed_G {X Y : Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F} :
  X ∈ G → Y ∈ G → X * Y ∈ G := by sorry

/-- Every element of G is a unit (invertible) in the ring of 4×4 matrices. -/
lemma elements_are_units_G {X : Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F} :
  X ∈ G → IsUnit X := by sorry
