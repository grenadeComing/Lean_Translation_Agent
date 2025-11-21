import Mathlib

/-!
Statement: The quaternion group Q = {±1, ±i, ±j, ±k} (with i^2 = j^2 = k^2 = -1 and (-1)^2 = 1)
is presented by ⟨a, b | a^2 = b^2 = (ab)^2⟩.

We formalize this by asserting the existence of a group Q with elements a, b and a surjective
homomorphism from the free group on two generators whose kernel is the normal closure of
the relations a^2, b^2, (ab)^2, and such that the images of the free generators are a and b.
(No proof is given.)
-/

theorem srdoty_alg_present_327 :
  ∃ (Q : Type) (hq : Group Q) (a b : Q) (f : FreeGroup (Fin 2) →* Q),
    -- f is surjective
    Function.Surjective f.toFun
    -- ker f is the normal closure of the relations a^2, b^2, (ab)^2 as elements of the free group
    ∧ MonoidHom.ker f = Subgroup.normalClosure
        ({(FreeGroup.of (0 : Fin 2)) ^ 2,
          (FreeGroup.of (1 : Fin 2)) ^ 2,
          ((FreeGroup.of (0 : Fin 2)) * (FreeGroup.of (1 : Fin 2))) ^ 2} : Set (FreeGroup (Fin 2)))
    -- the images of the free generators are a and b
    ∧ f (FreeGroup.of (0 : Fin 2)) = a
    ∧ f (FreeGroup.of (1 : Fin 2)) = b
    -- and the relations hold in Q
    ∧ a * a = b * b
    ∧ (a * b) * (a * b) = a * a :=
  by sorry
