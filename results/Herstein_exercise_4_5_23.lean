import Mathlib

open Polynomial

/-!
Exercise: Let F = ZMod 7 and let p(x) = x^3 - 2 and q(x) = x^3 + 2 be in F[x].
Show that p(x) and q(x) are irreducible in F[x] and that the fields
F[x]/(p(x)) and F[x]/(q(x)) are isomorphic.
-/

theorem herstein_exercise_4_5_23 :
  let F := ZMod 7
  let p : Polynomial F := X ^ 3 - C (2 : F)
  let q : Polynomial F := X ^ 3 + C (2 : F)
  (Irreducible p ∧ Irreducible q ∧ Nonempty (Polynomial F ⧸ Ideal.span {p} ≃+* Polynomial F ⧸ Ideal.span {q})) := by
  sorry
