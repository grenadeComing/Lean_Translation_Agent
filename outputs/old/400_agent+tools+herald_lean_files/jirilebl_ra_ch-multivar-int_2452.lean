import Mathlib

/-- Suppose R ⊆ ℝ^n is a closed rectangle. We state the algebra closure property in an
    abstract way by quantifying over a predicate is_riemann_integrable_on. -/
theorem riemann_integrable_on_algebra {n : Nat} (R : Set (Fin n -> ℝ))
  (is_riemann_integrable_on : Set (Fin n -> ℝ) -> ((Fin n -> ℝ) -> ℝ) -> Prop)
  (f g : (Fin n -> ℝ) -> ℝ) (a : ℝ)
  (hf : is_riemann_integrable_on R f) (hg : is_riemann_integrable_on R g) :
  is_riemann_integrable_on R (fun x => a * f x) ∧ is_riemann_integrable_on R (fun x => f x + g x)
    ∧ is_riemann_integrable_on R (fun x => f x * g x) := by sorry
