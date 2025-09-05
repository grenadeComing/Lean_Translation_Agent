import Mathlib

/-!
Let X be a topological space and let ~ be an equivalence relation on X with
quotient map q : X → X/~. Show that any continuous map h : X/~ → Y induces a
continuous map h ∘ q : X → Y. Conversely, show that a continuous map f : X → Y
arises in this way (i.e., f = h ∘ q for a unique continuous h) if and only if f is
constant on equivalence classes: f(x1) = f(x2) whenever x1 ~ x2.
-/

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
variable {r : Setoid X}

/-- If h : X/~ → Y is continuous then h ∘ (Quotient.mk) : X → Y is continuous. -/
theorem continuous_comp_quotient {h : Quotient r → Y} (hh : Continuous h) :
  Continuous (h ∘ (Quotient.mk : X → Quotient r)) := by sorry

/-- A continuous map f : X → Y factors through the quotient (uniquely) iff it is
constant on equivalence classes (i.e. factors through the quotient map). -/
theorem continuous_map_factors_iff {f : X → Y} (hf : Continuous f) :
  (∀ x y, Quotient.mk x = Quotient.mk y → f x = f y) ↔
    ∃! (g : Quotient r → Y), Continuous g ∧ g ∘ (Quotient.mk : X → Quotient r) = f := by sorry
