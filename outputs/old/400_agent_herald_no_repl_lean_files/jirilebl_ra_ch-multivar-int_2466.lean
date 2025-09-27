import Mathlib

/-!
Suppose R ⊆ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable_on R.
Assume there exists a closed set E ⊆ R with outer measure zero such that f = g on R \ E.
Show that Riemann.integral_on R f = Riemann.integral_on R g.
-/

variable {n : ℕ}

open Set

theorem integral_on_eq_of_eq_outside_closed_null {a b : Fin n → ℝ} (hbox : a ≤ b) {f g : (Fin n → ℝ) → ℝ}
  (hf : Riemann.integrable_on (Set.Icc a b) f) (hg : Riemann.integrable_on (Set.Icc a b) g)
  (E : Set (Fin n → ℝ)) (hE_closed : IsClosed E) (hE_subset : E ⊆ Set.Icc a b)
  (hE_null : OuterMeasure.null (OuterMeasure.ofSet E)) (h_eq : ∀ x, x ∉ E → f x = g x) :
  Riemann.integral_on (Set.Icc a b) f = Riemann.integral_on (Set.Icc a b) g := by sorry
