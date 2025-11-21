import Mathlib

/-!
Galois proved that the alternating group A_5 is simple, and that the Galois group
of the general quintic is S_5. Assuming these facts, the roots of a general quintic
cannot be expressed in terms of radicals. The following statement captures the
standard Galois-theoretic formulation:

If f is an irreducible degree-5 polynomial over ℚ whose Galois group is isomorphic
(as a permutation group) to S₅, then the polynomial is not solvable by radicals.
-/

open Polynomial

theorem general_quintic_not_solvable_by_radicals
  (f : Polynomial ℚ)
  (h_irred : Irreducible f)
  (h_nat_deg : f.natDegree = 5)
  (G : Type*) [Group G]
  (h_galois_iso : G ≃* Perm (Fin 5))
  (h_galois_of_f : G = GaloisGroup f) :
  ¬ IsSolvableByRadicals f := by sorry