import Mathlib

open Subgroup

variable {G : Type _} [Group G]

/-- If H is the unique subgroup satisfying a property P which is preserved by automorphisms,
then H is characteristic. This captures the usual statement: if H is the unique subgroup of a
given order, then H is characteristic, because order is preserved by automorphisms. -/
theorem unique_subgroup_property_characteristic {H : Subgroup G} {P : Subgroup G → Prop}
  (h_unique : ∀ K, P K → K = H)
  (h_invariant : ∀ (φ : G ≃* G) (K : Subgroup G), P K → P (Subgroup.map (φ.toMonoidHom) K)) :
  ∀ φ : G ≃* G, Subgroup.map (φ.toMonoidHom) H = H := by sorry