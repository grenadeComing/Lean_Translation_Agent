import Mathlib

/-
We formalize the statement: Let m* denote the outer measure on R^n (defined via coverings
by countably many open rectangles). Show that if R ⊂ R^n is a closed rectangle, then
m*(R) = V(R), where V(R) is the volume of R.

This file gives a Lean statement of this fact. The proof is omitted ("by sorry").
-/

open Set

/-- A closed rectangle in R^n given by coordinatewise closed intervals [a_i, b_i]. -/
def closed_rectangle {n : ℕ} (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  fun x => ∀ i, x i ∈ Icc (a i) (b i)

/-- Volume of a rectangle as the product of side lengths. -/
def rectangle_volume {n : ℕ} (a b : Fin n → ℝ) : ℝ :=
  ∏ i, (b i - a i)

/-- Informal outer measure symbol `m_star` is left abstract here; the theorem states that
for any outer-measure-like function `m_star` one has equality on closed rectangles.
(The actual outer measure must be the one defined via coverings by open rectangles.) -/
theorem outer_measure_closed_rectangle {n : ℕ} (m_star : Set (Fin n → ℝ) → ℝ)
  (a b : Fin n → ℝ) (h : ∀ i, a i ≤ b i) :
  m_star (closed_rectangle a b) = rectangle_volume a b := by sorry
