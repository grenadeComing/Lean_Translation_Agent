import Mathlib

open Set

variable {n : ℕ} {a b : Fin n → ℝ}

/-- Suppose R = Set.Icc a b ⊆ ℝ^n is a closed rectangle and f, g : (Fin n → ℝ) → ℝ are Riemann integrable on R.
    Then φ(x) = max (f x) (g x) and ψ(x) = min (f x) (g x) are Riemann integrable on R. -/
theorem max_min_riemann_integrable (f g : (Fin n → ℝ) → ℝ) (h : a ≤ b)
  (hf : RiemannIntegrableOn f (Set.Icc a b)) (hg : RiemannIntegrableOn g (Set.Icc a b)) :
  RiemannIntegrableOn (fun x => max (f x) (g x)) (Set.Icc a b) ∧
  RiemannIntegrableOn (fun x => min (f x) (g x)) (Set.Icc a b) := by sorry