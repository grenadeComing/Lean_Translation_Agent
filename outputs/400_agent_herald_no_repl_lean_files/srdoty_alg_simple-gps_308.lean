import Mathlib

open Equiv.Perm

/--
Assume:
- A5 (the alternating group on 5 letters) is simple,
- the Galois group of a "general quintic" polynomial is S5,
- if a polynomial is solvable by radicals then its Galois group is a solvable group.

Then the roots of a general quintic are not expressible by radicals.
(This statement is expressed abstractly: we take predicates `IsGeneralQuintic` and
`SolvableByRadicals` and an abstract `GaloisGroup` assigning a Galois group to each
polynomial. The intended application is to polynomials over Q and the usual
Galois group; the proof is the standard Galois-theoretic argument using that
A5 is simple and nonabelian, hence S5 is not solvable.)
-/

variable (IsGeneralQuintic : Polynomial ℚ → Prop)
variable (SolvableByRadicals : Polynomial ℚ → Prop)
variable (GaloisGroup : ∀ f, Type _) [∀ f, Group (GaloisGroup f)]

theorem general_quintic_not_solvable_by_radicals
  (hA5_simple : IsSimpleGroup (alternatingGroup (Fin 5)))
  (h_galois_S5 : ∀ f, IsGeneralQuintic f → (GaloisGroup f ≃* Equiv.Perm (Fin 5)))
  (h_radical_imp_solvable : ∀ f, SolvableByRadicals f → IsSolvableGroup (GaloisGroup f)) :
  ∀ f, IsGeneralQuintic f → ¬ SolvableByRadicals f := by sorry
