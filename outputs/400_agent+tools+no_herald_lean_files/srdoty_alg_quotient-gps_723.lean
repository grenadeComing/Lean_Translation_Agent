import Mathlib

open Matrix

variable (n : Nat)

/-- An n-by-n real matrix is orthogonal if Aᵀ * A = I. -/
def is_orthogonal (A : Matrix (Fin n) (Fin n) ℝ) : Prop := Aᵀ * A = 1

/-- The orthogonal group O(n) as a subtype of matrices. -/
def O_n : Type := {A : Matrix (Fin n) (Fin n) ℝ // is_orthogonal n A}

/-- The special orthogonal group SO(n) = {A ∈ O(n) | det A = 1}. -/
def SO_n : Type := {A : Matrix (Fin n) (Fin n) ℝ // is_orthogonal n A ∧ Matrix.det A = (1 : ℝ)}

/-- Conjugating a matrix B by an orthogonal matrix A preserves the determinant of B. -/
lemma orthogonal_conj_preserves_det {A B : Matrix (Fin n) (Fin n) ℝ} (hA : is_orthogonal n A) (hB : is_orthogonal n B) :
  Matrix.det (A * B * Aᵀ) = Matrix.det B := by sorry

/-- SO(n) is a normal subgroup of O(n): conjugation by an orthogonal matrix preserves SO(n). -/
lemma SO_normal :
  ∀ (A : O_n n) (B : SO_n n), is_orthogonal n (A.1 * B.1 * (A.1)ᵀ) ∧ Matrix.det (A.1 * B.1 * (A.1)ᵀ) = (1 : ℝ) := by sorry

/-- The quotient O(n) / SO(n) is (canonically) isomorphic to the unit group of ℤ (i.e. {±1}). -/
lemma O_quot_SO_equiv_units_int : True := by sorry
