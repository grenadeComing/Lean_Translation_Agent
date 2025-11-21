import Mathlib

universe u v

open Set

variable {X : Type u} [TopologicalSpace X] (s : Setoid X)
variable {Y : Type v} [TopologicalSpace Y] [TopologicalSpace (Quotient s)]

/-- Let q : X → Quotient s be the quotient map (Quotient.mk s).
    We express that the topology on Quotient s is the quotient topology
    by the hypothesis `quotient_topology` which says: U is open in Quotient s
    iff its preimage under Quotient.mk s is open in X. -/
theorem quotient_map_comp_continuous
  (h : Quotient s → Y)
  (h_cont : Continuous h)
  (quotient_topology : ∀ U : Set (Quotient s), IsOpen U ↔ IsOpen (preimage (Quotient.mk s) U)) :
  Continuous (h ∘ Quotient.mk s) := by sorry

/-- A continuous map f : X → Y factors (uniquely) through the quotient map
    q = Quotient.mk s as f = h ∘ q for a continuous h : Quotient s → Y iff f is
    constant on equivalence classes of `s`, i.e. f x₁ = f x₂ whenever x₁ ~ x₂. -/
theorem continuous_map_factors_through_quotient_iff_constant_on_classes
  (f : X → Y)
  (quotient_topology : ∀ U : Set (Quotient s), IsOpen U ↔ IsOpen (preimage (Quotient.mk s) U)) :
  (ExistsUnique fun (h : Quotient s → Y) => Continuous h ∧ h ∘ Quotient.mk s = f)
  ↔ (∀ x1 x2, @Setoid.r X s x1 x2 → f x1 = f x2) := by sorry
