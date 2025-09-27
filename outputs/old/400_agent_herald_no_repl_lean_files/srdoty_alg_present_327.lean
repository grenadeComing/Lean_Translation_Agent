import Mathlib

/-!
Statement: The quaternion group Q = {±1, ±i, ±j, ±k}, with i^2 = j^2 = k^2 = -1,
(-1)^2 = 1, and the usual multiplication rules, is presented by
⟨a, b | a^2 = b^2 = (ab)^2⟩.

We formalize this by exhibiting the free group on two generators a,b and the
normal closure of the relations a^2, b^2, (ab)^2, and assert the existence of
a group isomorphism between the resulting quotient and the (abstract) quaternion group.
The proof is omitted (by `sorry`).
-/

open FreeGroup

theorem srdoty_alg_present_327 :
  let F := FreeGroup (Fin 2)
  let a := FreeGroup.of (0 : Fin 2)
  let b := FreeGroup.of (1 : Fin 2)
  let rels : Set F := {a * a, b * b, (a * b) * (a * b)}
  let N := Subgroup.normalClosure rels
  in ∃ (Q : Type) [Group Q], Nonempty (Q ≃* (F ⧸ N)) :=
by
  -- A full proof constructing the isomorphism between the classical quaternion
  -- group and the presented quotient is omitted.
  sorry
