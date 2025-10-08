import Mathlib

/-- Predicate placeholder: `f` is Riemann integrable on the rectangle `R`. -/
def RiemannIntegrableOn {n : ℕ} (f : Fin n → ℝ) (R : Set (Fin n → ℝ)) : Prop := True

/-- The set of Riemann integrable functions on a rectangle is an algebra: closed under
scalar multiplication, addition and multiplication. -/
theorem riemann_integrable_algebra {n : ℕ} {R : Set (Fin n → ℝ)} {f g : Fin n → ℝ} (a : ℝ)
  (hf : RiemannIntegrableOn (f) R) (hg : RiemannIntegrableOn (g) R) :
  RiemannIntegrableOn (fun x => a * f x) R ∧ RiemannIntegrableOn (fun x => f x + g x) R ∧
    RiemannIntegrableOn (fun x => f x * g x) R := by sorry
