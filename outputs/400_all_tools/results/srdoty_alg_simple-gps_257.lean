import Mathlib

universe u

constant ExpressibleInRadicals : Polynomial Rat -> Prop
constant GalGroup : Polynomial Rat -> Type u
constant GalGroup_group : ∀ p : Polynomial Rat, Group (GalGroup p)

theorem complex_roots_expressible_by_radicals_iff_solvable (p : Polynomial Rat) (hp : Irreducible p) :
  ExpressibleInRadicals p ↔ IsSolvable (GalGroup p) := by
  sorry
