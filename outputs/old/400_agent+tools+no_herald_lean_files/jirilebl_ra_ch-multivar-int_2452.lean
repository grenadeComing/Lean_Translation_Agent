import Mathlib

variable {n : ℕ}

variable (IsClosedRectangle : Set (Fin n → ℝ) → Prop)
variable (RiemannIntegrableOn : Set (Fin n → ℝ) → ((Fin n → ℝ) → ℝ) → Prop)

theorem RiemannIntegrable_on_algebra {R : Set (Fin n → ℝ)} (hR : IsClosedRectangle R)
  {f g : (Fin n → ℝ) → ℝ} (a : ℝ)
  (hf : RiemannIntegrableOn R f) (hg : RiemannIntegrableOn R g) :
  RiemannIntegrableOn R (fun x => a * f x) ∧
    RiemannIntegrableOn R (fun x => f x + g x) ∧
    RiemannIntegrableOn R (fun x => f x * g x) := by sorry
