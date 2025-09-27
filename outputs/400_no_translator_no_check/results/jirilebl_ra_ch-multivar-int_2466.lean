import Mathlib

/-!
A translation of:
Suppose R ⊆ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable.
Assume there exists a closed set E ⊆ R with outer measure zero such that f = g on R \ E.
Show that ∫_R f = ∫_R g.

This file gives a Lean statement of that fact. We do not provide a full proof; the
statement ends with `:= by sorry` as requested.
-/

/-- We work in ℝ^n modeled as `Fin n → ℝ`. -/
def Rn (n : ℕ) := Fin n → ℝ

/-- Placeholder predicate: `f` is Riemann integrable on `R`. -/
axiom RiemannIntegrableOn {n : ℕ} : (Rn n → ℝ) → Set (Rn n) → Prop

/-- Placeholder for the value of the Riemann integral of `f` on `R`. -/
axiom integral_on {n : ℕ} : (Rn n → ℝ) → Set (Rn n) → ℝ

/-- Placeholder predicate: a set has outer measure zero. -/
axiom outer_measure_zero {n : ℕ} : Set (Rn n) → Prop

/-- Placeholder predicate: a set is closed. -/
axiom IsClosedSet {n : ℕ} : Set (Rn n) → Prop

/-- If two Riemann integrable functions agree off a closed null set, then their
    integrals on the rectangle R are equal. -/
theorem integral_eq_of_agree_off_null {n : ℕ} {R : Set (Rn n)} {f g : Rn n → ℝ} {E : Set (Rn n)}
  (hf : RiemannIntegrableOn f R) (hg : RiemannIntegrableOn g R)
  (hE_closed : IsClosedSet E) (hE_sub : E ⊆ R) (hE_null : outer_measure_zero E)
  (h_eq : ∀ x ∈ R \ E, f x = g x) :
  integral_on f R = integral_on g R := by sorry
