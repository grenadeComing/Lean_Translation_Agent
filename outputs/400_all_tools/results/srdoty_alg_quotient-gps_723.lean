import Mathlib
open Matrix

/-- The orthogonal group O(n) as matrices A with Aᵀ * A = 1. -/
def O_group (n : Nat) := {A : Matrix (Fin n) (Fin n) Real // Matrix.transpose A * A = (1 : Matrix (Fin n) (Fin n) Real)}

/-- The special orthogonal group SO(n) as orthogonal matrices with det = 1. -/
def SO_group (n : Nat) := {A : Matrix (Fin n) (Fin n) Real // Matrix.transpose A * A = (1 : Matrix (Fin n) (Fin n) Real) ∧ Matrix.det A = (1 : Real)}

/-- Normality: conjugating an element of SO(n) by an element of O(n) stays in SO(n). -/
theorem SO_normal_in_O (n : Nat) (g : O_group n) (h : SO_group n) :
  ∃ k : SO_group n, k.1 = g.1 * h.1 * Matrix.transpose g.1 := by
  sorry

/-- There exists a surjective determinant-sign map from O(n) to Units Int whose kernel
    is exactly SO(n). (Stated here as a characterization: det_sign g = 1 ↔ det g = 1.) -/
theorem exists_det_sign_surj_ker (n : Nat) :
  ∃ (det_sign : O_group n → Units Int), Function.Surjective det_sign ∧
    (∀ g : O_group n, det_sign g = 1 ↔ Matrix.det g.1 = (1 : Real)) := by
  sorry

/-- Hence O(n) modulo SO(n) is (canonically) two elements, i.e. isomorphic to Units Int.
    We express this by giving an existence of a map from O(n) to Units Int which is
    surjective and identifies exactly those matrices that differ by right-multiplication by
    an element of SO(n). This encodes the quotient → Units Int isomorphism. -/
theorem O_mod_SO_equiv_units (n : Nat) :
  ∃ (iso : O_group n → Units Int), Function.Surjective iso ∧
    (∀ g h : O_group n, iso g = iso h ↔ ∃ s : SO_group n, g.1 = h.1 * s.1) := by
  sorry
