import Mathlib

variable {A : Type _} [AddCommGroup A]

/-- The equivalence relation on `A` induced by an additive subgroup `B`.
    We identify `x` and `y` iff `x - y ∈ B`. -/
def add_subgroup_setoid (B : AddSubgroup A) : Setoid A :=
  Setoid.mk (fun x y => x - y ∈ B) (by sorry)

/-- The quotient type `A / B` as a `Quotient` of the above setoid. -/
def quotient_add_group (B : AddSubgroup A) := Quotient (add_subgroup_setoid B)

/-- If `A` is an abelian (additive) group and `B` is a subgroup, then the quotient `A / B` is abelian. -/
theorem quotient_of_abelian_is_abelian (B : AddSubgroup A) : AddCommGroup (quotient_add_group B) := by sorry
