import Mathlib

/-
Exercise: Let F = ZMod 7 and let p(x) = x^3 - 2 and q(x) = x^3 + 2 in F[X].
Show that p and q are irreducible in F[X] and that the fields F[X]/(p) and F[X]/(q) are isomorphic.
-/

def F := ZMod 7

open Polynomial

noncomputable section

variable {F}

/-- The two cubic polynomials over ZMod 7. -/
def p : Polynomial F := X ^ 3 - C (2 : F)
def q : Polynomial F := X ^ 3 + C (2 : F)

/-- p is irreducible in F[X]. -/
theorem p_irreducible : Irreducible (p : Polynomial F) := by sorry

/-- q is irreducible in F[X]. -/
theorem q_irreducible : Irreducible (q : Polynomial F) := by sorry

/-- The quotient rings F[X]/(p) and F[X]/(q) are isomorphic (in fact they are fields). -/
theorem quot_iso : (Polynomial F) ⧸ Ideal.span ({p} : Set (Polynomial F)) ≃+* (Polynomial F) ⧸ Ideal.span ({q} : Set (Polynomial F)) := by sorry

end
