import Mathlib

/-!
Translate: Suppose R ⊂ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable.
Show that φ(x) = max (f(x), g(x)) and ψ(x) = min (f(x), g(x)) are Riemann integrable on R.
-/

theorem max_min_riemann_integrable {n : ℕ} {a b : Fin n → ℝ} (hab : a ≤ b)
  {f g : (Fin n → ℝ) → ℝ}
  (hf : IsRiemannIntegrableOn f (Set.Icc a b)) (hg : IsRiemannIntegrableOn g (Set.Icc a b)) :
  IsRiemannIntegrableOn (fun x => max (f x) (g x)) (Set.Icc a b) ∧
  IsRiemannIntegrableOn (fun x => min (f x) (g x)) (Set.Icc a b) := by sorry