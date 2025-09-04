import Mathlib

/-- For a closed rectangle R in R^n, the outer measure m^* of R equals its volume. -/

def rectangle (n : ℕ) (a b : Fin n → ℝ) : Set (Fin n → ℝ) := fun x => ∀ i, a i ≤ x i ∧ x i ≤ b i

def volume (n : ℕ) (a b : Fin n → ℝ) : ℝ := ∏ i, (b i - a i)

theorem outer_measure_closed_rectangle (n : ℕ) (m_star : Set (Fin n → ℝ) → ℝ) (a b : Fin n → ℝ)
  (hab : ∀ i, a i ≤ b i) :
  m_star (rectangle n a b) = volume n a b := by sorry
