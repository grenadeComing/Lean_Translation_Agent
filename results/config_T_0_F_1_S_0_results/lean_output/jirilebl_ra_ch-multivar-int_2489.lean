import Mathlib

variable {n : ℕ}
variable {R : Set (Fin n → ℝ)}
variable (RiemannIntegrableOn : (Fin n → ℝ) → Set (Fin n → ℝ) → Prop)
variable (f g : Fin n → ℝ)

/-- A closed rectangle in ℝ^n is the set of points between two componentwise bounds a ≤ x ≤ b. -/
def IsClosedRectangle (R : Set (Fin n → ℝ)) : Prop :=
  ∃ (a b : Fin n → ℝ), (∀ i, a i ≤ b i) ∧ R = {x | ∀ i, a i ≤ x i ∧ x i ≤ b i}

/-- If f and g are Riemann integrable on a closed rectangle R, then max(f,g) and min(f,g)
    are Riemann integrable on R. -/
theorem max_min_riemann_integrable_on (hR : IsClosedRectangle R)
  (hf : RiemannIntegrableOn f R) (hg : RiemannIntegrableOn g R) :
  RiemannIntegrableOn (fun x => max (f x) (g x)) R ∧ RiemannIntegrableOn (fun x => min (f x) (g x)) R := by
  sorry
