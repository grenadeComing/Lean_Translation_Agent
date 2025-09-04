import Mathlib

open Set

/-- Placeholder definitions to state the classical result: if a rectangle in R^n has one side
    of length 0 then every bounded function on it is Riemann integrable with integral 0. -/

def BoundedOn {n : ℕ} (f : (Fin n → ℝ) → ℝ) (R : Set (Fin n → ℝ)) : Prop := True

def HasRiemannIntegralOn {n : ℕ} (f : (Fin n → ℝ) → ℝ) (R : Set (Fin n → ℝ)) (I : ℝ) : Prop := True

/-- Suppose R ⊂ ℝ^n is a closed rectangle with one side of length 0. For every bounded function
    f : R → ℝ, f is Riemann integrable on R and ∫_R f = 0. -/
theorem has_riemann_integral_on_of_rectangle_one_side_zero {n : ℕ} (a b : Fin n → ℝ)
  (h_side : ∃ j : Fin n, a j = b j) {f : (Fin n → ℝ) → ℝ}
  (hf : BoundedOn f (pi univ fun i => Icc (a i) (b i))) :
  HasRiemannIntegralOn f (pi univ fun i => Icc (a i) (b i)) (0 : ℝ) := by sorry
