import Mathlib

/-!
We state (without proof) that SO(n) is a normal subgroup of O(n),
and that O(n)/SO(n) is (via the determinant) the two-element group {±1}.

We work with real matrices indexed by `Fin n`.
-/

open Matrix

variable (n : ℕ) [DecidableEq (Fin n)] [Fintype (Fin n)]

/-- Conjugation by an orthogonal matrix preserves orthogonality and determinant = 1.  This
expresses that SO(n) is normal in O(n). -/
theorem so_normal_in_o (A S : Matrix (Fin n) (Fin n) ℝ) :
  A.transpose * A = 1 -> S.transpose * S = 1 -> Matrix.det S = 1 ->
  (A * S * A.transpose).transpose * (A * S * A.transpose) = 1 ∧
  Matrix.det (A * S * A.transpose) = 1 :=
by sorry

/-- The orthogonal group O(n) and special orthogonal group SO(n) as sets. -/
def O : Set (Matrix (Fin n) (Fin n) ℝ) := {M | M.transpose * M = 1}

def SO : Set (Matrix (Fin n) (Fin n) ℝ) := {M | M.transpose * M = 1 ∧ Matrix.det M = 1}

/-- Determinant of an orthogonal matrix is ±1, and the determinant map from O(n)
onto the two-element set {1,-1} has kernel SO(n). This is the statement that
O(n)/SO(n) is (via det) isomorphic to the two-element group. -/
theorem det_orthogonal_pm_one_and_kernel_surj :
  (∀ M, M ∈ O n → Matrix.det M = 1 ∨ Matrix.det M = -1) ∧
  (∀ y : ℝ, (y = 1 ∨ y = -1) → ∃ M, M ∈ O n ∧ Matrix.det M = y) ∧
  (∀ M, M ∈ SO n ↔ M ∈ O n ∧ Matrix.det M = 1) :=
by sorry
