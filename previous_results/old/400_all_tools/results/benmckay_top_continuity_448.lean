import Mathlib

variable {X Y : Type _} (s : Setoid X)

variable [TopologicalSpace X] [TopologicalSpace Y]

/-- Put the quotient topology on `Quotient s` coinduced by `Quotient.mk s`. -/
instance : TopologicalSpace (Quotient s) := TopologicalSpace.coinduced (Quotient.mk s) (inferInstance : TopologicalSpace X)

/-- Let `q : X → X/{~}` be the quotient map for an equivalence relation `s` on a topological space `X`.
A map `h : X/{~} → Y` is continuous iff `h ∘ q : X → Y` is continuous. -/
theorem continuous_quotient_map_iff {h : Quotient s → Y} :
  Continuous h ↔ Continuous (h ∘ Quotient.mk s) := by sorry

/-- Conversely, a continuous map `f : X → Y` descends to a continuous map `Quotient s → Y`
iff `f x1 = f x2` whenever `x1` and `x2` are equivalent under `s`. -/
theorem continuous_descends_iff {f : X → Y} (hf : Continuous f) :
  (∃ g : Quotient s → Y, Continuous g ∧ g ∘ Quotient.mk s = f) ↔
    ∀ x1 x2, s.r x1 x2 → f x1 = f x2 := by sorry
