import Mathlib

constant gal (p : Polynomial Rat) : Type
constant gal_group {p : Polynomial Rat} : Group (gal p)

constant irreducible_poly (p : Polynomial Rat) : Prop
constant expressible_by_radicals (p : Polynomial Rat) : Prop
constant group_solvable (G : Type) [Group G] : Prop

theorem expressible_by_radicals_iff_galois_group_solvable
  (p : Polynomial Rat) (hp : irreducible_poly p) :
  expressible_by_radicals p ↔ group_solvable (gal p) := by
  sorry
