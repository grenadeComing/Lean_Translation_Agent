import Mathlib

/--
If G = H1 × ... × Hn is an internal direct product of normal subgroups H i
(in the sense that every g ∈ G can be written uniquely as a product of elements
from the H i), then distinct factors intersect trivially.
-/
theorem srdoty_alg_products_363 {G : Type*} [Group G] {n : ℕ} (H : Fin n → Subgroup G)
  (h_normal : ∀ i, (H i).Normal)
  (h_direct : ∀ g : G, ∃! (hi : ∀ k, H k), g = ∏ k : Fin n, (hi k : G)) :
  ∀ i j : Fin n, i ≠ j → (H i : Set G) ∩ (H j : Set G) = ({1} : Set G) := by sorry