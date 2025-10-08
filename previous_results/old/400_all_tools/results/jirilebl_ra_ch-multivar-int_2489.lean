import Mathlib

constant RiemannIntegrableOn (n : ℕ) (f : (Fin n → ℝ) → ℝ) (R : Set (Fin n → ℝ)) : Prop

theorem max_min_riemann_integrable {n : ℕ} {R : Set (Fin n → ℝ)} {f g : (Fin n → ℝ) → ℝ}
  (hf : RiemannIntegrableOn n f R) (hg : RiemannIntegrableOn n g R) :
  RiemannIntegrableOn n (fun x => max (f x) (g x)) R ∧ RiemannIntegrableOn n (fun x => min (f x) (g x)) R := by
  sorry
