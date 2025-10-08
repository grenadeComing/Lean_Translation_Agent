import Mathlib

/-!
Statement: The quaternion group Q = {±1, ±i, ±j, ±k} (with i^2 = j^2 = k^2 = -1 and the usual multiplication
rules) is presented by ⟨a, b | a^2 = b^2 = (ab)^2⟩.
We formalize this by exhibiting a group homomorphism from the free group on two generators
whose kernel is the normal closure of the relations a^2, b^2, (ab)^2.
-/

inductive gens : Type
| a | b

open gens

theorem srdoty_alg_present_327 :
  ∃ (f : FreeGroup gens →* QuaternionGroup 2),
    f (FreeGroup.of a ^ 2) = 1 ∧
    f (FreeGroup.of b ^ 2) = 1 ∧
    f (FreeGroup.of a * FreeGroup.of b) ^ 2 = 1 ∧
    MonoidHom.ker f = Subgroup.normalClosure
      ({FreeGroup.of a ^ 2, FreeGroup.of b ^ 2, (FreeGroup.of a * FreeGroup.of b) ^ 2} : Set (FreeGroup gens)) := by
  sorry
