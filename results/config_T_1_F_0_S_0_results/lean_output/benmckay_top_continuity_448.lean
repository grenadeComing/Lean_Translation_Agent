import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

variable (s : Setoid X)

/-- Let q : X → X/∼ be the quotient map for an equivalence relation `s` on a topological space `X`.
A map `h : Quotient s → Y` is continuous iff `h ∘ Quotient.mk` is continuous. -/
theorem continuous_iff_comp_quotient_mk (h : Quotient s → Y) :
  Continuous h ↔ Continuous (h ∘ (Quotient.mk : X → Quotient s)) := by sorry

/-- Conversely, a continuous map `F : X → Y` descends to a continuous map `Quotient s → Y`
iff `F x1 = F x2` whenever `x1` and `x2` are related by `s`. -/
theorem continuous_descends_iff_respects_setoid (F : X → Y) :
  Continuous F →
  (∃ (G : Quotient s → Y), Continuous G ∧ G ∘ (Quotient.mk : X → Quotient s) = F) ↔
    ∀ x x', s.r x x' → F x = F x' := by sorry