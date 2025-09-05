import Mathlib

/-!
Suppose R ⊂ ℝ^n is a closed rectangle. Show that the set of Riemann integrable
functions on R is an algebra: if f,g are Riemann integrable on R and a ∈ ℝ,
then a • f, f + g, and f * g are Riemann integrable on R.

This file gives a formal statement of that fact (without a full proof).
-/

variable {n : ℕ}

-- We model a closed rectangle in ℝ^n as an interval product Icc a b for a b : Fin n → ℝ
theorem riemann_integrable_on_algebra
  {a b : Fin n → ℝ} {R : Set (Fin n → ℝ)} (hR : R = Icc a b)
  {f g : (Fin n → ℝ) → ℝ} (hf : RiemannIntegrableOn f R) (hg : RiemannIntegrableOn g R)
  (c : ℝ) :
  RiemannIntegrableOn (fun x => c * f x) R ∧
  RiemannIntegrableOn (fun x => f x + g x) R ∧
  RiemannIntegrableOn (fun x => f x * g x) R := by sorry
