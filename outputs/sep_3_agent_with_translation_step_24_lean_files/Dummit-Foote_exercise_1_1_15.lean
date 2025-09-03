import Mathlib

/-- For any group G and any finite list of elements of G, the inverse of the product is the product
    of the inverses in the reverse order. This corresponds to the identity
    (a_1 a_2 ... a_n)^{-1} = a_n^{-1} ... a_1^{-1}. -/
theorem prod_inv_rev {G : Type _} [Group G] (l : List G) : (l.prod)⁻¹ = (l.reverse.map fun x => x⁻¹).prod := by sorry
