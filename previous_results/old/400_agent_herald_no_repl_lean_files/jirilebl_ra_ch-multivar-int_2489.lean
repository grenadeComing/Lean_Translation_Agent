import Mathlib

open Set

/-- Suppose `I ⊂ ℝ^n` is a closed rectangle (a box) and `f g : (Fin n → ℝ) → ℝ` are Riemann integrable
on `I`. Then `x ↦ max (f x) (g x)` and `x ↦ min (f x) (g x)` are Riemann integrable on `I`. -/
lemma riemann_integrable_on_max_min {n : ℕ} {I : Set (Fin n → ℝ)} (hbox : is_box I)
  {f g : (Fin n → ℝ) → ℝ} (hf : Riemann.integrable_on f I) (hg : Riemann.integrable_on g I) :
  Riemann.integrable_on (fun x => max (f x) (g x)) I ∧ Riemann.integrable_on (fun x => min (f x) (g x)) I := by sorry
