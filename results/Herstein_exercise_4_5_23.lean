import Mathlib

/-!
Let F = Z_7 and let p(x) = x^3 - 2 and q(x) = x^3 + 2 be in F[x].
Show that p(x) and q(x) are irreducible in F[x] and that the fields
F[x]/(p(x)) and F[x]/(q(x)) are isomorphic.
-/

open Polynomial

noncomputable section

noncomputable def p : Polynomial (ZMod 7) := X ^ 3 - C (2 : ZMod 7)

noncomputable def q : Polynomial (ZMod 7) := X ^ 3 + C (2 : ZMod 7)

theorem p_irreducible : Irreducible (p : Polynomial (ZMod 7)) := by sorry

theorem q_irreducible : Irreducible (q : Polynomial (ZMod 7)) := by sorry

noncomputable def fields_iso : (Polynomial (ZMod 7) ⧸ Ideal.span ({p} : Set (Polynomial (ZMod 7)))) ≃+* (Polynomial (ZMod 7) ⧸ Ideal.span ({q} : Set (Polynomial (ZMod 7)))) := by sorry

end
