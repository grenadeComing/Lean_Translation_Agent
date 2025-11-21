import Mathlib

/--
Suppose R = Icc a b ⊆ ℝ^n is a closed rectangle. The set of Riemann integrable
functions on R is an algebra: if f,g are Riemann integrable on R and c ∈ ℝ,
then c • f, f + g, and f * g are Riemann integrable on R.
-/
theorem riemann_integrable_on_algebra {n : ℕ} {a b : Fin n → ℝ} {f g : (Fin n → ℝ) → ℝ} (c : ℝ)
  (hf : IsRiemannIntegrableOn f (Set.Icc a b)) (hg : IsRiemannIntegrableOn g (Set.Icc a b)) :
  IsRiemannIntegrableOn (fun x => c * f x) (Set.Icc a b) ∧
  IsRiemannIntegrableOn (fun x => f x + g x) (Set.Icc a b) ∧
  IsRiemannIntegrableOn (fun x => f x * g x) (Set.Icc a b) := by sorry
