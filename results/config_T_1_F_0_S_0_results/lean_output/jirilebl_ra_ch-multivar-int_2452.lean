import Mathlib

/-- Suppose R ⊆ ℝ^n is a closed rectangle. The set of Riemann integrable functions on R is an algebra:
if f, g are Riemann integrable on R and a ∈ ℝ, then af, f+g, and fg are Riemann integrable on R. -/
theorem riemann_integrable_on_closed_rectangle_is_algebra {n : ℕ} {R : Set (Fin n → ℝ)}
  (hR_closed : IsClosed R) :
  ∀ (f g : (Fin n → ℝ) → ℝ) (a : ℝ),
    RiemannIntegrableOn f R → RiemannIntegrableOn g R →
    (RiemannIntegrableOn (fun x => a * f x) R) ∧
    (RiemannIntegrableOn (fun x => f x + g x) R) ∧
    (RiemannIntegrableOn (fun x => f x * g x) R) := by sorry