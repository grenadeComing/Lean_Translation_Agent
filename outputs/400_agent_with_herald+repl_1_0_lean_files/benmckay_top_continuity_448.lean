import Mathlib

variable {X : Type _} [TopologicalSpace X]
variable (s : Setoid X)
variable [TopologicalSpace (Quotient s)]
variable {Y : Type _} [TopologicalSpace Y]

/-- The quotient map q : X → Quotient s. -/
def q : X → Quotient s := Quotient.mk

/-- If h : X/∼ → Y is continuous then h ∘ q : X → Y is continuous. -/
theorem continuous_comp_quotient {h : Quotient s → Y} (h_cont : Continuous h) :
  Continuous (h ∘ q) := by sorry

/-- A continuous map f : X → Y factors (uniquely) through the quotient by a continuous
    map h : X/∼ → Y iff f is continuous and constant on equivalence classes. -/
theorem continuous_factor_through_quotient_iff {f : X → Y} :
  (∃! (h : Quotient s → Y), Continuous h ∧ h ∘ q = f) ↔
    (Continuous f ∧ ∀ x₁ x₂ : X, Quotient.mk x₁ = Quotient.mk x₂ → f x₁ = f x₂) := by sorry
