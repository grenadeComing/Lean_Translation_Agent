import Mathlib

/-!
Let q : X → X/∼ be the quotient map for an equivalence relation ∼ on a topological space X.
A map h : X/∼ → Y is continuous iff h ∘ q : X → Y is continuous.
Conversely, a continuous map F : X → Y descends to a continuous map X/∼ → Y iff
F(x1) = F(x2) whenever x1 ∼ x2.

This file states the two standard facts about continuity and quotients. Proofs are omitted
(`:= by sorry`) since the task is to translate the statement into Lean4.
-/

open Function

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

-- We model an equivalence relation as a Setoid on X and use it as an instance.
variable [s : Setoid X]

/-- The quotient map q : X → Quotient s. -/
def q : X → Quotient s := Quotient.mk s

lemma continuous_iff_compose_quotient {h : Quotient s → Y} :
  Continuous h ↔ Continuous (h ∘ q) := by sorry

lemma continuous_descends_iff_constant_on_classes {F : X → Y} (hF : Continuous F) :
  (∃ (h : Quotient s → Y), (h ∘ q = F) ∧ Continuous h) ↔
    (∀ x1 x2 : X, s x1 x2 → F x1 = F x2) := by sorry
