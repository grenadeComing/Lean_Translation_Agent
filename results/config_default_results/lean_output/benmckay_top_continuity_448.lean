import Mathlib

/-- Let q : X → X/∼ be the quotient map for an equivalence relation ∼ on a topological space X.
A map h : X/∼ → Y is continuous iff h ∘ q is continuous. Conversely, a continuous map F : X → Y
descends to a continuous map X/∼ → Y iff F(x1) = F(x2) whenever x1 ∼ x2. -/

theorem continuous_quotient_lift {X Y : Type*} (s : Setoid X)
  (tX : TopologicalSpace X) (tQ : TopologicalSpace (Quotient s))
  (ht : tQ = TopologicalSpace.coinduced (Quotient.mk s) tX)
  (tY : TopologicalSpace Y) {h : Quotient s → Y} :
  @Continuous (Quotient s) Y tQ tY h ↔ @Continuous X Y tX tY (h ∘ Quotient.mk s) := by sorry

theorem continuous_descends_iff {X Y : Type*} (s : Setoid X)
  (tX : TopologicalSpace X) (tQ : TopologicalSpace (Quotient s))
  (ht : tQ = TopologicalSpace.coinduced (Quotient.mk s) tX)
  (tY : TopologicalSpace Y) {F : X → Y} (hF : @Continuous X Y tX tY F) :
  (∃ (g : Quotient s → Y), @Continuous (Quotient s) Y tQ tY g ∧ g ∘ Quotient.mk s = F) ↔
    ∀ x₁ x₂ : X, Setoid.r s x₁ x₂ → F x₁ = F x₂ := by sorry
