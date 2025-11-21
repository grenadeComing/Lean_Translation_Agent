import Mathlib

open Matrix

/-- The orthogonal group O(n) as a subtype of n×n real matrices. -/
def O (n : ℕ) := { A : Matrix (Fin n) (Fin n) ℝ // A.transpose * A = 1 }

/-- The special orthogonal group SO(n) (orthogonal matrices of determinant 1). -/
def SO (n : ℕ) := { A : Matrix (Fin n) (Fin n) ℝ // A.transpose * A = 1 ∧ Matrix.det A = 1 }

/-- SO(n) is normal in O(n): conjugating an SO(n)-matrix by an O(n)-matrix yields an SO(n)-matrix. -/
theorem so_normal_in_o (n : ℕ) :
  ∀ g (hg : g.transpose * g = 1) h (hh : h.transpose * h = 1 ∧ Matrix.det h = 1),
    ((g * h * g.transpose).transpose * (g * h * g.transpose) = 1 ∧ Matrix.det (g * h * g.transpose) = 1) := by sorry

/-- The quotient O(n)/SO(n) is (canonically) isomorphic to the group of units of ℤ (i.e. {±1}).

We formulate this by exhibiting a bijection from O(n) (mod SO(n)) to Units ℤ; the statement below asserts
existence of a bijective map from the orthogonal group (as a subtype) onto Units ℤ which on matrices is given
by the sign of the determinant (1 ↦ 1, -1 ↦ -1). -/
theorem o_quotient_so_eq_units_Z (n : ℕ) :
  ∃ (φ : ( { A : Matrix (Fin n) (Fin n) ℝ // A.transpose * A = 1 } ) → Units ℤ),
    Function.Injective φ ∧ Function.Surjective φ ∧
    (∀ A : { A : Matrix (Fin n) (Fin n) ℝ // A.transpose * A = 1 },
      φ A = if Matrix.det A.val = 1 then (1 : Units ℤ) else (-1 : Units ℤ)) := by sorry
