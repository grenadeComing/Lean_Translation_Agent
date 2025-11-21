import Mathlib

open Set

/-
We state the claim: for a closed rectangle R = {x | ∀ i, a i ≤ x i ≤ b i} in ℝ^n (identified with Fin n → ℝ),
its outer measure m_star equals its volume ∏ i (b i - a i),
where m_star is assumed given as an outer measure valued in ENNReal.
-/

theorem outer_measure_eq_volume_on_closed_rectangle (n : ℕ)
  (m_star : Set (Fin n → ℝ) → ENNReal)
  (a b : Fin n → ℝ) (hab : ∀ i, a i ≤ b i) :
  m_star {x : Fin n → ℝ | ∀ i, a i ≤ x i ∧ x i ≤ b i} = ENNReal.ofReal (∏ i : Fin n, (b i - a i)) := by sorry
