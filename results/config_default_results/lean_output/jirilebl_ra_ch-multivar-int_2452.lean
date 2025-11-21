import Mathlib

/-- Predicate saying that R is a closed rectangle in ℝ^n. -/
axiom ClosedRectangle {n : Nat} (R : Set (Fin n → ℝ)) : Prop

/-- Predicate saying that a real-valued function on a box is Riemann integrable on that box. -/
axiom IsRiemannIntegrableOn {n : Nat} (f : (Fin n → ℝ) → ℝ) (R : Set (Fin n → ℝ)) : Prop

/-- Suppose R ⊆ ℝ^n is a closed rectangle. The set of Riemann integrable functions on R is an
    algebra: if f,g are Riemann integrable on R and a ∈ ℝ, then af, f+g, and fg are Riemann
    integrable on R. -/
theorem riemann_integrable_algebra {n : Nat} {R : Set (Fin n → ℝ)} (hR : ClosedRectangle (R := R))
  {f g : (Fin n → ℝ) → ℝ} (a : ℝ) (hf : IsRiemannIntegrableOn f R) (hg : IsRiemannIntegrableOn g R) :
  IsRiemannIntegrableOn (fun x => a * f x) R ∧
  IsRiemannIntegrableOn (fun x => f x + g x) R ∧
  IsRiemannIntegrableOn (fun x => f x * g x) R := by sorry
