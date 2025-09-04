import Mathlib

/-
Assuming the classical facts:
- A5 is non-abelian simple (hence not solvable),
- the Galois group of the general quintic is S5,
- solvability by radicals implies the Galois group is solvable,
- if S5 were solvable then A5 (its index-2 normal subgroup) would be solvable.
We state the conclusion that the roots of the general quintic are not expressible by radicals.
-/

axiom A5_nonabelian_simple : Prop
axiom S5_is_galois_general_quintic : Prop
axiom roots_general_quintic_solvable_by_radicals : Prop

axiom S5_solvable : Prop
axiom A5_solvable : Prop

axiom solvable_by_radicals_implies_S5_solvable :
  roots_general_quintic_solvable_by_radicals → S5_solvable

axiom S5_solvable_implies_A5_solvable :
  S5_solvable → A5_solvable

axiom A5_not_solvable : ¬ A5_solvable

-- Final statement (proof omitted):
theorem general_quintic_not_solvable_by_radicals
  (hA5_simple : A5_nonabelian_simple)
  (hGalois : S5_is_galois_general_quintic)
  : ¬ roots_general_quintic_solvable_by_radicals := by
  sorry
