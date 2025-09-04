import Mathlib

open Set

theorem outer_measure_union_null {α : Type*} (m : Set α → ENNReal)
  (m_mono : ∀ {s t : Set α}, s ⊆ t → m s ≤ m t)
  (m_union_add : ∀ s t : Set α, m (s ∪ t) ≤ m s + m t)
  {A B : Set α} (hB : m B = 0) : m (A ∪ B) = m A := by sorry
