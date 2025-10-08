import Mathlib

/--
Let m* be an outer measure on ℝ^n. Suppose R_1,...,R_n are pairwise disjoint open
rectangles. Then m*(⋃_{k=1}^n R_k) = ∑_{k=1}^n m*(R_k).

The statement below formalises this for rectangles indexed by `Fin n` in `ℝ^n`.
We do not provide a proof here (`by sorry`).
-/

lemma outer_measure_add_on_disjoint_open_rectangles
  {n : ℕ}
  (m_star : Set (Fin n → ℝ) → ENNReal)
  (R : Fin n → Set (Fin n → ℝ))
  (h_rect : ∀ i, IsOpen (R i) ∧ ∃ a b : Fin n → ℝ, R i = { x | ∀ j, a j < x j ∧ x j < b j })
  (h_disj : ∀ i j, i ≠ j → Disjoint (R i) (R j)) :
  m_star (⋃ i, R i) = ∑ i, m_star (R i) := by sorry
