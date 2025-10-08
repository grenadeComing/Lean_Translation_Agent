import Mathlib

open Set

variable {G : Type*} [Group G]
variable {n : Nat}
variable (H : Fin n → Subgroup G)

/-- A convenient formulation of "G is the internal direct product of the family H" -/
def is_internal_direct_product_family : Prop :=
  ∀ g : G, ∃! f : Fin n → G, (∀ k, f k ∈ H k) ∧ g = List.foldl (· * ·) (1 : G) (List.ofFn f)

/-- If G is the internal direct product of the (normal) subgroups H_i then the subgroups
    are pairwise intersection-trivial: for i ≠ j we have H_i ∩ H_j = {1}. -/
theorem srdoty_alg_products_363 (h : is_internal_direct_product_family H) {i j : Fin n} (hij : i ≠ j) :
  ((H i : Set G) ∩ (H j : Set G)) = ({1} : Set G) := by sorry
