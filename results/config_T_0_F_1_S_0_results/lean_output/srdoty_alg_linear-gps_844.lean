import Mathlib

variable {F : Type _} [Field F]

/-- G is the set of 4×4 block matrices (with index type Fin 2 ⊕ Fin 2) of the form
    Matrix.fromBlocks A B 0 C with A,B,C ∈ M₂(F) and det (A * C) ≠ 0. -/
def G : Set (Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F) :=
  { M | ∃ (A B C : Matrix (Fin 2) (Fin 2) F),
      M = Matrix.fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C ∧ Matrix.det (A * C) ≠ 0 }

/-- H is the subset of GL(Fin 2 ⊕ Fin 2, F) consisting of those invertible matrices whose
    underlying matrix lies in G. -/
def H : Set (GL (Fin 2 ⊕ Fin 2) F) :=
  { g | (g : Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F) ∈ G }

/-- The set H is a subgroup of GL(Fin 2 ⊕ Fin 2, F): it contains 1 and is closed under
    multiplication and inversion. -/
theorem H_is_subgroup :
  (1 : GL (Fin 2 ⊕ Fin 2) F) ∈ H ∧
  (∀ g h : GL (Fin 2 ⊕ Fin 2) F, g ∈ H → h ∈ H → g * h ∈ H) ∧
  (∀ g : GL (Fin 2 ⊕ Fin 2) F, g ∈ H → g⁻¹ ∈ H) := by sorry
