import Mathlib

/-!
Statement (informal): Suppose R ⊆ ℝ^n is a closed rectangle and f, g : R → ℝ are Riemann integrable.
Assume there exists a closed set E ⊆ R with outer measure zero such that f = g on R \ E.
Show that ∫_R f = ∫_R g.

This file gives a formal translation of the statement using abstract placeholders for the
notions of Riemann integrability, Riemann integral, and outer measure zero. The proof is
omitted (``by sorry'').
-/

variable {X : Type _}

-- We work abstractly: R is a subset of some ambient type X (think X = Fin n → ℝ).
variable (R : Set X) (f g : X → ℝ)

-- Placeholders for the Riemann integrability predicate and the Riemann integral on a set R.
variable (RiemannIntegrable_on : ∀ (R : Set X), (X → ℝ) → Prop)
variable (RiemannIntegral : ∀ (R : Set X), (X → ℝ) → ℝ)

-- Placeholder for the notion "E has outer measure zero".
variable (outer_measure_zero : Set X → Prop)

-- We do not formalize the closed-rectangle structure here; only assume E is closed as a Prop.
variable (E : Set X)
variable (E_closed : Prop)

theorem rint_eq_of_equal_off_null
  (hE_sub : E ⊆ R)
  (h_outer_zero : outer_measure_zero E)
  (h_eq : ∀ x, x ∈ R \ E → f x = g x)
  (hf : RiemannIntegrable_on R f)
  (hg : RiemannIntegrable_on R g) :
  RiemannIntegral R f = RiemannIntegral R g := by
  sorry
