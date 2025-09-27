import Mathlib
open Function
open scoped Pointwise
open scoped Pointwise in
open Set
open MonoidHom
open Subgroup

/-- If H \triangleleft\, G, K \triangleleft\, G, and H \subset K then (K/H) \triangleleft\, (G/H) and (G/H)/(K/H) \cong G/K.

Save it to: srdoty_alg_quotient-gps_730.lean -/
theorem quotient_triangle_ext {G : Type*} [Group G] {H K : Subgroup G} (hH : H.Normal) (hK : K.Normal)
    (h : H ≤ K) : (K ⧸ H) ≤ (G ⧸ H) ∧ (G ⧸ H) ⧸ (K ⧸ H) ≃* G ⧸ K := by sorry