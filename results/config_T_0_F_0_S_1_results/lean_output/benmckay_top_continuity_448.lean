import Mathlib

/-!
Translate: Let q : X → X/~ be the quotient map for an equivalence relation ~ on a topological space X.
A map h : X/~ → Y is continuous iff h ∘ q : X → Y is continuous.
Conversely, a continuous map F : X → Y descends to a continuous map X/~ → Y iff
F(x₁) = F(x₂) whenever x₁ ~ x₂.

The statements are given here in the more general form for an arbitrary quotient map q : X → Z.
-/

theorem continuous_iff_comp_quotient_map {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [TopologicalSpace Z] (q : X → Z) (hq : QuotientMap q) (h : Z → Y) :
  Continuous h ↔ Continuous (h ∘ q) := by sorry

theorem continuous_map_descends_iff {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [TopologicalSpace Z] (q : X → Z) (hq : QuotientMap q) (F : X → Y) (hF : Continuous F) :
  (∃ g : Z → Y, Continuous g ∧ g ∘ q = F) ↔ ∀ x1 x2, q x1 = q x2 → F x1 = F x2 := by sorry
