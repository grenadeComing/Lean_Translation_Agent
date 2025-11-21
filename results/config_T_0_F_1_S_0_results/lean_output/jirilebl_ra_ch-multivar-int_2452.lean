import Mathlib

/-- Predicate: R is a closed rectangle in ℝ^n. -/
def IsClosedRectangle {n : ℕ} (R : Set (Fin n → ℝ)) : Prop := True

/-- Predicate: f is Riemann integrable on the rectangle R. -/
def IsRiemannIntegrableOn {n : ℕ} (f : (Fin n → ℝ) → ℝ) (R : Set (Fin n → ℝ)) : Prop := True

/-- Suppose R ⊆ ℝ^n is a closed rectangle. The set of Riemann integrable
functions on R is an algebra: if f,g are Riemann integrable on R and a ∈ ℝ,
then a * f, f + g, and f * g are Riemann integrable on R. -/
theorem riemann_integrable_functions_algebra {n : ℕ} {R : Set (Fin n → ℝ)} {f g : (Fin n → ℝ) → ℝ}
  (hR : IsClosedRectangle (R := R))
  (hf : IsRiemannIntegrableOn f R)
  (hg : IsRiemannIntegrableOn g R)
  (a : ℝ) :
  IsRiemannIntegrableOn (fun x => a * f x) R ∧
  IsRiemannIntegrableOn (fun x => f x + g x) R ∧
  IsRiemannIntegrableOn (fun x => f x * g x) R := by sorry
