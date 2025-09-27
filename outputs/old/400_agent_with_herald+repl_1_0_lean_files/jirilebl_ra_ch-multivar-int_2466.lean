import Mathlib

variable {α : Type _}

def IsClosedRectangle (R : Set α) : Prop := True

def RiemannIntegrableOn (f : α → ℝ) (R : Set α) : Prop := True

def outer_measure_zero (E : Set α) : Prop := True

def integral_on (f : α → ℝ) (R : Set α) : ℝ := 0

def IsClosedSet (E : Set α) : Prop := True

theorem integral_eq_of_equal_off_null {R : Set α} {f g : α → ℝ} {E : Set α}
  (hR : IsClosedRectangle R)
  (hf : RiemannIntegrableOn f R)
  (hg : RiemannIntegrableOn g R)
  (hEsub : E ⊆ R)
  (hEclosed : IsClosedSet E)
  (hEm0 : outer_measure_zero E)
  (hfg : ∀ x ∈ R \ E, f x = g x) :
  integral_on f R = integral_on g R := by
  sorry
