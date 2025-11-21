import Mathlib

open Matrix Set

variable (n : Nat)

/-- The orthogonal group O(n) as a set of real matrices. -/
def O (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | Matrix.transpose A * A = 1 }

/-- The special orthogonal group SO(n) as a set of real matrices. -/
def SO (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | Matrix.transpose A * A = 1 ∧ Matrix.det A = 1 }

/-- SO(n) is normal in O(n), and the determinant map on O(n) has image {±1}. -/
theorem SO_normal_and_quotient (n : Nat) :
  (∀ g ∈ O n, ∀ h ∈ SO n, g * h * Matrix.transpose g ∈ SO n) ∧
  (Matrix.det '' (O n) = ({(1 : ℝ), (-1 : ℝ)} : Set ℝ)) := by sorry
