import Mathlib

open Matrix

/-- The orthogonal group O(n) as a subtype of matrices. -/
def O (n : ℕ) : Type := {A : Matrix (Fin n) (Fin n) ℝ // Matrix.transpose A * A = 1}

/-- The special orthogonal group SO(n) (orthogonal matrices with determinant 1). -/
def SO (n : ℕ) : Type := {A : Matrix (Fin n) (Fin n) ℝ // Matrix.transpose A * A = 1 ∧ Matrix.det A = 1}

/-- SO(n) is normal in O(n): conjugation by an orthogonal matrix preserves orthogonality and determinant. -/
theorem SO_normal_in_O {n : ℕ} :
  ∀ (g : O n) (h : SO n),
    Matrix.transpose (g.1 * h.1 * Matrix.transpose g.1) * (g.1 * h.1 * Matrix.transpose g.1) = 1 ∧
    Matrix.det (g.1 * h.1 * Matrix.transpose g.1) = 1 := by
  sorry

/-- The determinant of an orthogonal matrix is ±1. -/
theorem det_of_orthogonal {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (h : Matrix.transpose A * A = 1) :
  Matrix.det A = 1 ∨ Matrix.det A = -1 := by
  sorry

/-- Consequently O(n)/SO(n) is (group-)isomorphic to the group of units of Z, i.e. {±1}.
    Here we only state the intended algebraic fact informally; a full formalisation would use
    the determinant homomorphism O(n) → Units ℤ and show its kernel is SO(n), inducing the
    isomorphism O(n)/SO(n) ≃ Units ℤ. -/
theorem O_mod_SO_is_Z_units {n : ℕ} : True := by
  -- formal statement and isomorphism omitted; see comment above
  sorry
