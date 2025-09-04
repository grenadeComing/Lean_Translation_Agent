import Mathlib

/-- Placeholder axiom for Riemann integrability of a function on a set. -/
axiom RiemannIntegrableOn {n : ℕ} (f : (Fin n → Real) → Real) (R : Set (Fin n → Real)) : Prop

/-- Suppose R ⊆ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable.
    Then φ(x) = max(f(x), g(x)) and ψ(x) = min(f(x), g(x)) are Riemann integrable on R.
    The proof is omitted (placeholder `:= by sorry`). -/
theorem max_min_riemann_integrable {n : ℕ} (R : Set (Fin n → Real)) (f g : (Fin n → Real) → Real)
  (hf : RiemannIntegrableOn f R) (hg : RiemannIntegrableOn g R) :
  RiemannIntegrableOn (fun x => Real.max (f x) (g x)) R ∧ RiemannIntegrableOn (fun x => Real.min (f x) (g x)) R := by
  sorry
