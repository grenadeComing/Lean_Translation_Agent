import Mathlib

variable {n : Nat}
variable (R : Set (Fin n → ℝ))
variable (RiemannIntegrableOn : ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → Prop)

theorem riemann_integrable_on_closed_rectangle_is_algebra
  {f g : (Fin n → ℝ) → ℝ} {a : ℝ}
  (hf : RiemannIntegrableOn f R) (hg : RiemannIntegrableOn g R) :
  RiemannIntegrableOn (fun x => a * f x) R ∧
  RiemannIntegrableOn (fun x => f x + g x) R ∧
  RiemannIntegrableOn (fun x => f x * g x) R := by
  sorry
