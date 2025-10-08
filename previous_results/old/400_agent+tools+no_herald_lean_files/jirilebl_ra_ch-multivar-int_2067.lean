import Mathlib

open Set

variable {X : Type*} {Rect : Type*} (rect_set : Rect → Set X) (V : Rect → ENNReal)

/-- Outer measure defined by inf over sequences (indexed by ℕ). -/
noncomputable def m_star (S : Set X) : ENNReal :=
  sInf ({ t : ENNReal | ∃ f : ℕ → Rect, t = ∑' j, V (f j) ∧ S ⊆ ⋃ j, rect_set (f j) } : Set ENNReal)

/-- Outer measure defined by inf over finite or countable index sets. -/
noncomputable def mu_star (S : Set X) : ENNReal :=
  sInf ({ t : ENNReal | ∃ (I : Type*) (hc : Countable I) (f : I → Rect),
    t = ∑' i, V (f i) ∧ S ⊆ ⋃ i, rect_set (f i) } : Set ENNReal)

theorem mu_eq_m (S : Set X) : mu_star rect_set V S = m_star rect_set V S := by sorry
