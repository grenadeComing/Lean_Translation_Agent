import Mathlib

/-!
Translate: Let X be a topological space and let ~ be an equivalence relation on X with quotient map
q : X → X/~. Show that any continuous map h : X/~ → Y induces a continuous map h ∘ q : X → Y.
Conversely, show that a continuous map f : X → Y arises in this way (i.e., f = h ∘ q for a unique
continuous h) iff f is constant on equivalence classes: f x1 = f x2 whenever x1 ~ x2.

We state the two lemmas below. Proofs are omitted (by sorry).
-/

open Set

variable {X Y : Type*}
variable [TopologicalSpace X] [TopologicalSpace Y]

theorem continuous_comp_quotient {s : Setoid X} (h : Quotient s → Y) (hh : Continuous h) :
  Continuous (h ∘ Quotient.mk s : X → Y) := by sorry

theorem quotient_lift_unique_iff {s : Setoid X} (f : X → Y) :
  (∃! h : Quotient s → Y, Continuous h ∧ f = h ∘ Quotient.mk s) ↔
    (Continuous f ∧ ∀ x1 x2 : X, s.r x1 x2 → f x1 = f x2) := by sorry
