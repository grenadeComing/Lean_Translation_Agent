import Mathlib

/-- Matrix of the form [[a, -b], [b, a]] -/
def to_matrix (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | 0, 0 => a
  | 0, 1 => -b
  | 1, 0 => b
  | 1, 1 => a

/-- G is the set of 2x2 real matrices of the form [[a, -b], [b, a]] -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | ∃ a b : ℝ, M = to_matrix a b }

/-- Closure under addition, negation and containing zero (i.e. an additive subgroup) -/
theorem G_add_closed : ∀ M N, M ∈ G → N ∈ G → M + N ∈ G := by
  sorry

theorem G_neg_closed : ∀ M, M ∈ G → -M ∈ G := by
  sorry

theorem G_zero_mem : (0 : Matrix (Fin 2) (Fin 2) ℝ) ∈ G := by
  sorry

/-- The obvious map from ℂ to G (as matrices) -/
def phi (z : ℂ) : Matrix (Fin 2) (Fin 2) ℝ := to_matrix z.re z.im

/-- An additive equivalence between ℂ (as an additive group) and G (as a subgroup realized as a subtype).
    The proof fields are omitted (by sorry). -/
def complex_equiv_G : AddEquiv ℂ (Subtype G) where
  toFun := fun z => ⟨to_matrix z.re z.im, by use z.re, z.im; rfl⟩
  invFun := fun M => Complex.mk (M.val 0 0) (M.val 1 0)
  left_inv := by
    intro z
    dsimp
    sorry
  right_inv := by
    intro M
    dsimp
    sorry
  map_add := by
    intro x y
    dsimp
    sorry
