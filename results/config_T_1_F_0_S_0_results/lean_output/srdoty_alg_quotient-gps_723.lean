import Mathlib

/-!
Simple statement file: SO(n) is a normal subgroup of O(n) and O(n)/SO(n) ≃ ℤˣ.
We state the definitions of O(n) and SO(n) as subsets of matrices over ℝ and
record the two main assertions (without proof).
-/

open Matrix

/-- The (real) orthogonal group O(n) as a set of n×n real matrices. -/
def O (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | Aᵀ ⬝ A = 1 }

/-- The special orthogonal group SO(n) as those orthogonal matrices of determinant 1. -/
def SO (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | Aᵀ ⬝ A = 1 ∧ A.det = 1 }

/-- SO(n) is normal in O(n).  (Statement only; no proof.) -/
theorem SO_normal_in_O (n : ℕ) :
  -- for every g in O(n) and every h in SO(n), the conjugate g h g^{-1} lies in SO(n)
  ∀ g ∈ O n, ∀ h ∈ SO n, g ⬝ h ⬝ g⁻¹ ∈ SO n := by sorry

/-- The quotient O(n)/SO(n) is isomorphic (as a group) to the unit group of ℤ, i.e. {±1}.
    (Statement only; no proof.) -/
theorem O_div_SO_equiv_IntUnits (n : ℕ) :
  -- group isomorphism between the quotient and Int.Units
  (O n) / (SO n) ≃* Int.Units := by sorry
