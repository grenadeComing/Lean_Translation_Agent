import Mathlib

open Matrix

variable {n : Nat}

/-- Orthogonal matrices O(n) as a subset of n×n real matrices. -/
def O : Set (Matrix (Fin n) (Fin n) ℝ) := { A | isOrthogonal A }

/-- Special orthogonal matrices SO(n) as a subset of n×n real matrices. -/
def SO : Set (Matrix (Fin n) (Fin n) ℝ) := { A | isOrthogonal A ∧ A.det = 1 }

/-- SO(n) is normal in O(n): conjugating a special orthogonal matrix by an orthogonal
matrix yields a special orthogonal matrix. -/
theorem SO_normal_in_O {g h : Matrix (Fin n) (Fin n) ℝ} (hg : isOrthogonal g) (hh : isOrthogonal h) (hd : h.det = 1) :
  isOrthogonal (g ⬝ h ⬝ gᵀ) ∧ (g ⬝ h ⬝ gᵀ).det = 1 := by sorry

/-- The quotient O(n)/SO(n) is isomorphic to the group of units of ℤ (i.e. {±1}). -/
theorem O_quot_SO_eq_units_int : Prop := by sorry
