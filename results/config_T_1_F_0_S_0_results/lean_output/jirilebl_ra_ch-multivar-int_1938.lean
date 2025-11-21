import Mathlib

/-- Let m^* denote the outer measure on ℝ^n (defined via coverings by countably many open rectangles),
    and V(R) denote the usual volume of a rectangle. -/
open Set

variable {n : ℕ}

/-- Closed rectangle (product of closed intervals) in ℝ^n. -/
def closed_rectangle (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  Set.pi (univ : Set (Fin n)) fun i => Set.Icc (a i) (b i)

/-- Statement: for a closed rectangle R in ℝ^n, m^*(R) = V(R). -/
variable (m_star : Set (Fin n → ℝ) → ENNReal) (V : Set (Fin n → ℝ) → ENNReal)

theorem outer_measure_closed_rectangle (a b : Fin n → ℝ) (h : ∀ i, a i ≤ b i) :
  m_star (closed_rectangle a b) = V (closed_rectangle a b) := by sorry